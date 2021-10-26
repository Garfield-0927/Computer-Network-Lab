//
// Created by A on 2021/10/22.
//

#include "GBNRdtSender.h"
#include "Global.h"


GBNRdtSender::GBNRdtSender() : baseSeqNum(0), nextSeqNum(0), windowSize(7), seqNumSize(8) {}

GBNRdtSender::~GBNRdtSender() noexcept {
}

bool GBNRdtSender::getWaitingState() {
    return (this->nextSeqNum + this->seqNumSize - this->baseSeqNum) % this->seqNumSize >= this->windowSize;
}

bool GBNRdtSender::send(const Message &msg) {

    // slide window is full
    if (getWaitingState()) {
        cout << "������������!" << endl;
        return false;
    }

    // slide window is not full
    Packet &pkt = *new Packet();
    pkt.acknum = -1;
    pkt.seqnum = this->nextSeqNum;
    memcpy(pkt.payload, msg.data, sizeof(msg.data));
    pkt.checksum = pUtils->calculateCheckSum(pkt);
    if (!(this->pkts.size())) {
        this->baseSeqNum = this->nextSeqNum;
        pns->startTimer(SENDER, Configuration::TIME_OUT, 0);
    }
    pUtils->printPacket("���ͷ����ͱ���:", pkt);
    pns->sendToNetworkLayer(RECEIVER, pkt);                                //����ģ�����绷����sendToNetworkLayer��ͨ������㷢�͵��Է�

    // put the packet into packet queue
    this->pkts.push_back(pkt);

    // change next seq number
    this->nextSeqNum++;
    this->nextSeqNum %= this->seqNumSize;


    return true;


}

void GBNRdtSender::receive(const Packet &pkt) {
    int checkSum = pUtils->calculateCheckSum(pkt);

    if (checkSum != pkt.checksum) {
        pUtils->printPacket("���շ�û����ȷ�յ����ͷ��ı���,����У�����", pkt);
        return;
    }

    pUtils->printPacket("��ȷ����ȷ�ϱ���", pkt);
    int ackNum = pkt.acknum;
    for (int i = 0; i < (ackNum - this->baseSeqNum + 1 + this->seqNumSize) % this->seqNumSize; i++){
        this->pkts.erase(this->pkts.begin(), this->pkts.begin() + 1);
    }
    this->baseSeqNum = (ackNum+1) % this->seqNumSize;
    pns->stopTimer(SENDER, 0);

    if (this->baseSeqNum != this->nextSeqNum) {
        pns->startTimer(SENDER, Configuration::TIME_OUT, 0);
    }

    std::fstream outfile;
    outfile.open("GBNOutput.txt", ios::app);

    printSlideWindow(outfile);
    outfile.close();
}

void GBNRdtSender::timeoutHandler(int seqNum) {
    pns->stopTimer(SENDER, 0);
    cout << "���ͳ�ʱ" << endl;
    pns->startTimer(SENDER, Configuration::TIME_OUT, 0); //������ʱ�������¼�ʱ
    for (auto i : this->pkts) {
        pns->sendToNetworkLayer(RECEIVER, i);
        pUtils->printPacket("��ʱ�ش�����", i);
    }
    cout << "��ʱ�ش��������" << endl;
}

void GBNRdtSender::printSlideWindow(fstream& file) {
    cout << "============================SPLIT LINE===========================" << endl;
    cout << "baseSeqNum: " << this->baseSeqNum << endl;
    cout << "nextSeqNum: " << this->nextSeqNum << endl;
    cout << "slideWindow: [ ";
    for (int i = this->baseSeqNum;; ++i) {
        i = i >= this->seqNumSize ? i % this->seqNumSize : i;
        if ((i + this->seqNumSize - this->baseSeqNum) % this->seqNumSize >= this->windowSize) {
            break;
        }
        cout << i << " ";
    }
    cout << "]" << endl;
    cout << "============================SPLIT LINE===========================" << endl;

    file << "============================SPLIT LINE===========================" << endl;
    file << "baseSeqNum: " << this->baseSeqNum << endl;
    file << "nextSeqNum: " << this->nextSeqNum << endl;
    file << "slideWindow: [ ";
    for (int i = this->baseSeqNum;; ++i) {
        i = i >= this->seqNumSize ? i % this->seqNumSize : i;
        if ((i + this->seqNumSize - this->baseSeqNum) % this->seqNumSize >= this->windowSize) {
            break;
        }
        file << i << " ";
    }
    file << "]" << endl;
    file << "============================SPLIT LINE===========================" << endl;
}