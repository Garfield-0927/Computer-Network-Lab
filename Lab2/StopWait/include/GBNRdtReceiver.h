//
// Created by A on 2021/10/22.
//

#ifndef STOPWAIT_GBNRDTRECEIVER_H
#define STOPWAIT_GBNRDTRECEIVER_H

#include "RdtReceiver.h"

class GBNRdtReceiver : public RdtReceiver {

private:
    int expectSequenceNumberRcvd;    // �ڴ��յ�����һ���������
    Packet lastAckPkt;                //�ϴη��͵�ȷ�ϱ���
    int seqSize;
public:
    GBNRdtReceiver();
    virtual ~GBNRdtReceiver();

public:

    void receive(const Packet &packet);    //���ձ��ģ�����NetworkService����
};


#endif //STOPWAIT_GBNRDTRECEIVER_H
