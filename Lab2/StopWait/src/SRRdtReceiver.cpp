//
// Created by A on 2021/10/23.
//

#include "SRRdtReceiver.h"
#include "Global.h"

SRRdtReceiver::SRRdtReceiver() : baseSeqNum(0) {
    lastAckPkt.acknum = -1;
    lastAckPkt.checksum = 0;
    lastAckPkt.seqnum = -1;
    for (int i = 0; i < Configuration::PAYLOAD_SIZE; i++) {
        lastAckPkt.payload[i] = '.';
    }
    lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);


    for (auto &i : this->pkts) {
        i.seqnum = -1;
    }
}

SRRdtReceiver::~SRRdtReceiver() {}


void SRRdtReceiver::receive(const Packet &pkt) {
    int checkSum = pUtils->calculateCheckSum(pkt);
    int seqNum = pkt.seqnum;
    if (checkSum == pkt.checksum && this->isInWindow(seqNum)) {
        pUtils->printPacket("[R] Receiver has correctly received the pkt", pkt);

        int seqNum = pkt.seqnum;
        int index = (seqNum + this->seqSize - this->baseSeqNum) % this->seqSize;
        this->pkts[index] = pkt;


        Message msg;


        int i = 0;
        while (this->pkts[0].seqnum != -1) {
            this->baseSeqNum = (this->pkts[i].seqnum + 1) % this->seqSize;
            memcpy(msg.data, this->pkts[i].payload, sizeof(this->pkts[i].payload));
            pns->delivertoAppLayer(RECEIVER, msg);
            this->lastAckPkt.acknum = this->pkts[i].seqnum;
            memcpy(this->lastAckPkt.payload, pkt.payload, sizeof(this->pkts[i].payload));
            this->lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);
            pUtils->printPacket("[R] Receiver is going to send ackPkt", this->lastAckPkt);
            pns->sendToNetworkLayer(SENDER, lastAckPkt);

            for (int j = 1; j <= this->windowSize; ++j) {
                if (j == this->windowSize) {
                    this->pkts[j - 1].seqnum = -1;
                } else {
                    this->pkts[j - 1] = this->pkts[j];
                }
            }

            std::fstream outfile;
            outfile.open("SRReceiverOutput.txt", ios::app);
            printSlideWindow(outfile, pkt.seqnum);
            outfile.close();
        }


    } else {
        if (checkSum != pkt.checksum) {
            pUtils->printPacket("[R] Receiver has incorrectly received the pkt with wrong checksum", pkt);
        } else {
            pUtils->printPacket("[R] Receiver has incorrectly received the pkt with wrong seq number", pkt);
            pUtils->printPacket("[R] Receiver is going to send ackPkt", this->lastAckPkt);

            this->lastAckPkt.acknum = pkt.seqnum;
            this->lastAckPkt.checksum = pUtils->calculateCheckSum(this->lastAckPkt);
            pns->sendToNetworkLayer(SENDER, lastAckPkt);
        }
    }

}

bool SRRdtReceiver::isInWindow(int seqNum) {
    return (seqNum + this->seqSize - this->baseSeqNum) % this->seqSize < this->windowSize;
}

void SRRdtReceiver::printSlideWindow(std::fstream &file, int rcvdSeqNum) {
    file << "============================SPLIT LINE===========================" << endl;
    file << "baseSeqNum: " << this->baseSeqNum << endl;
    file << "rcvdSeqNum: " << rcvdSeqNum << endl;

    file << "slideWindow: [ ";
    for (int i = this->baseSeqNum;; ++i) {
        i = i >= this->seqSize ? i % this->seqSize : i;
        if ((i + this->seqSize - this->baseSeqNum) % this->seqSize >= this->windowSize) {
            break;
        }
        file << i << " ";
    }
    file << "]" <<endl;

    file << "============================SPLIT LINE===========================" << endl;

}
