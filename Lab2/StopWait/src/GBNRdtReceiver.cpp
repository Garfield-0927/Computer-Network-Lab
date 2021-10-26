//
// Created by A on 2021/10/22.
//

#include "GBNRdtReceiver.h"
#include "Global.h"


GBNRdtReceiver::GBNRdtReceiver() : expectSequenceNumberRcvd(0), seqSize(8) {
    lastAckPkt.acknum = -1; //��ʼ״̬�£��ϴη��͵�ȷ�ϰ���ȷ�����Ϊ-1��ʹ�õ���һ�����ܵ����ݰ�����ʱ��ȷ�ϱ��ĵ�ȷ�Ϻ�Ϊ-1
    lastAckPkt.checksum = 0;
    lastAckPkt.seqnum = -1;    //���Ը��ֶ�
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
        pns->sendToNetworkLayer(SENDER, this->lastAckPkt);    //����ģ�����绷����sendToNetworkLayer��ͨ������㷢���ϴε�ȷ�ϱ���

    }
}