//
// Created by A on 2021/10/24.
//

#include "TCPRdtSender.h"
#include "Global.h"


TCPRdtSender::TCPRdtSender() {
    this->baseSeqNum = 0;
    this->nextSeqNum = 0;
    this->windowSize = 7;
    this->seqNumSize = 8;
    this->duplicateAckNum = -1;
}

TCPRdtSender::~TCPRdtSender() noexcept {  }

bool TCPRdtSender::getWaitingState() {
    return (this->nextSeqNum + this->seqNumSize - this->baseSeqNum) % this->seqNumSize >= this->windowSize;
}

bool TCPRdtSender::isInWindow(int seqNum) {
    return (seqNum + this->seqNumSize - this->baseSeqNum) % this->seqNumSize < this->windowSize;
}

void TCPRdtSender::timeoutHandler(int seqNum) {
    cout << "[S] Timeout triggered" << endl;
    pns->stopTimer(SENDER, 0);
    pns->startTimer(SENDER, Configuration::TIME_OUT, 0);
    pUtils->printPacket("[S] Sender resend the earliest unacked pkt", this->pkts[0]);
    pns->sendToNetworkLayer(RECEIVER, this->pkts[0]);

}

void TCPRdtSender::printSlideWindow(std::fstream &file) {
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
}

bool TCPRdtSender::send(const Message &msg) {
    // slide window is full
    if (getWaitingState()) {
        cout << "[S] Slide Window is full" << endl;
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
    pUtils->printPacket("[S] Sender sends the pkt", pkt);
    pns->sendToNetworkLayer(RECEIVER, pkt);                                //调用模拟网络环境的sendToNetworkLayer，通过网络层发送到对方

    // put the packet into packet queue
    this->pkts.push_back(pkt);

    // change next seq number
    this->nextSeqNum++;
    this->nextSeqNum %= this->seqNumSize;
    return true;
}


void TCPRdtSender::receive(const Packet &pkt) {
    int checkSum = pUtils->calculateCheckSum(pkt);

    if (checkSum != pkt.checksum) {
        pUtils->printPacket("[S] Sender received corrupted pkt", pkt);
        return;
    }

    int ackNum = pkt.acknum;
    if (this->isInWindow(ackNum)){
        pUtils->printPacket("[S] Sender received correct pkt", pkt);
        pns->stopTimer(SENDER, 0);
        for (int i = 0; i < (ackNum - this->baseSeqNum + 1 + this->seqNumSize) % this->seqNumSize; i++){
            this->pkts.erase(this->pkts.begin(), this->pkts.begin() + 1);
        }
        this->baseSeqNum = (ackNum+1) % this->seqNumSize;

        if (this->baseSeqNum != this->nextSeqNum) {
            pns->startTimer(SENDER, Configuration::TIME_OUT, 0);
        }

        std::fstream outfile;
        outfile.open("TCPOutput.txt", ios::app);

        printSlideWindow(outfile);
        outfile.close();
    } else {
        if (this->duplicateAckNum == 3 ){

            if (this->pkts.size()){
                pns->stopTimer(SENDER, 0);
                pUtils->printPacket("[S] Sender has received 3 duplicate ack", this->pkts[0]);
                cout << "[S] Sender has received 3 duplicate ack" << endl;
                std::fstream outfile;
                outfile.open("TCP3DupAck.txt", ios::app);
                outfile << "[S] Sender has received 3 duplicate ack. Sender is going to resend the base pkt: pkt" << this->baseSeqNum<< endl;
                printSlideWindow(outfile);
                outfile.close();
                pns->sendToNetworkLayer(RECEIVER, this->pkts[0]);
                pns->startTimer(SENDER, Configuration::TIME_OUT, 0);
            }
            this->duplicateAckNum = 0;
        } else {
            this->duplicateAckNum ++;
        }
    }

}