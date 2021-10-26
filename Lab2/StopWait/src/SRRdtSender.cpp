//
// Created by A on 2021/10/23.
//

#include "SRRdtSender.h"
#include "Global.h"


SRRdtSender::SRRdtSender() : baseSeqNum(0), nextSeqNum(0), windowSize(4), seqNumSize(8) {}

SRRdtSender::~SRRdtSender() {}


bool SRRdtSender::getWaitingState() {
    return (this->nextSeqNum + this->seqNumSize - this->baseSeqNum) % this->seqNumSize >= this->windowSize;
}

bool SRRdtSender::send(const Message &msg) {
    if (this->getWaitingState()) {
        cout << "slide window is full, please wait..." << endl;
        return false;
    }

    Packet &pkt = *new Packet();
    pkt.acknum = -1;
    pkt.seqnum = this->nextSeqNum;
    memcpy(pkt.payload, msg.data, sizeof(msg.data));
    pkt.checksum = pUtils->calculateCheckSum(pkt);
    if (!(this->pkts.size())) {
        this->baseSeqNum = this->nextSeqNum;
    }
    pns->startTimer(SENDER, Configuration::TIME_OUT, pkt.seqnum);

    pUtils->printPacket("[S] Sender sends the pkt", pkt);

    this->pkts.push_back(pkt);
    this->nextSeqNum++;
    this->nextSeqNum %= this->seqNumSize;



    return true;
}

void SRRdtSender::receive(const Packet &pkt) {

    int checkSum = pUtils->calculateCheckSum(pkt);
    if (checkSum != pkt.checksum) {
        pUtils->printPacket("[S] Sender receives corrupted pkt with wrong checksum", pkt);
        return;
    }

    pUtils->printPacket("[S] Sender receives correct pkt", pkt);


    std::fstream outfile;
    outfile.open("SRSenderOutput.txt", ios::app);
    int ackNum = pkt.acknum;
    std::vector<Packet>::iterator it;

    for (it = this->pkts.begin(); it != this->pkts.end(); ++it) {
        if (it->seqnum == ackNum) {
            this->pkts.erase(it, it + 1);
            if (ackNum == this->baseSeqNum) {
                if (!(this->pkts.size())){
                    this->baseSeqNum ++;
                    this->baseSeqNum %= this->seqNumSize;
                } else {
                    this->baseSeqNum = it->seqnum;
                }
            }
            pns->stopTimer(SENDER, ackNum);
            printSlideWindow(outfile, pkt.acknum);
            break;
        }
    }


    outfile.close();

}

void SRRdtSender::timeoutHandler(int seqNum) {
    pns->stopTimer(SENDER, seqNum);
    cout << "[S] Sender sends pkt timeout" << endl;
    for (auto &pkt : this->pkts) {
        if (pkt.seqnum == seqNum) {
            pns->startTimer(SENDER, Configuration::TIME_OUT, seqNum);
            pns->sendToNetworkLayer(RECEIVER, pkt);
            pUtils->printPacket("[S] Sender resend the timeout pkt" , pkt);
            break;
        }
    }
}

void SRRdtSender::printSlideWindow(fstream& file, int rcvdAckNum) {
    cout << "rcvdAckNum: " << rcvdAckNum << endl;
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

    file << "rcvdAckNum: " << rcvdAckNum << endl;
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

