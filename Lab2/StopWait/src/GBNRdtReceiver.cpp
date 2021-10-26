//
// Created by A on 2021/10/22.
//

#include "GBNRdtReceiver.h"
#include "Global.h"


GBNRdtReceiver::GBNRdtReceiver() : expectSequenceNumberRcvd(0), seqSize(8) {
    lastAckPkt.acknum = -1; //初始状态下，上次发送的确认包的确认序号为-1，使得当第一个接受的数据包出错时该确认报文的确认号为-1
    lastAckPkt.checksum = 0;
    lastAckPkt.seqnum = -1;    //忽略该字段
    for (int i = 0; i < Configuration::PAYLOAD_SIZE; i++) {
        lastAckPkt.payload[i] = '.';
    }
    lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);
}

GBNRdtReceiver::~GBNRdtReceiver() {

}

void GBNRdtReceiver::receive(const Packet &pkt) {
    // do checksum
    int checkSum = pUtils->calculateCheckSum(pkt);
    // checksum correct and seqNum is expected
    if (checkSum == pkt.checksum && pkt.seqnum == this->expectSequenceNumberRcvd) {
        pUtils->printPacket("Receiver has correctly received the pkt", pkt);

        Message msg;
        memcpy(msg.data, pkt.payload, sizeof(pkt.payload));
        pns->delivertoAppLayer(RECEIVER, msg);

        this->lastAckPkt.acknum = pkt.seqnum;
        this->lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);
        pUtils->printPacket("Receiver is going to send ackPkt", lastAckPkt);
        pns->sendToNetworkLayer(SENDER, lastAckPkt);

        this->expectSequenceNumberRcvd = (this->expectSequenceNumberRcvd + 1) % this->seqSize;

    } else {
        if (checkSum != pkt.checksum) {
            pUtils->printPacket("Receiver has incorrectly received the pkt with wrong checksum", pkt);
        } else {
            pUtils->printPacket("Receiver has incorrectly received the pkt with wrong seq number", pkt);
        }
        pUtils->printPacket("Receiver is going to resend the lastAckPkt", this->lastAckPkt);
        pns->sendToNetworkLayer(SENDER, this->lastAckPkt);    //调用模拟网络环境的sendToNetworkLayer，通过网络层发送上次的确认报文

    }
}