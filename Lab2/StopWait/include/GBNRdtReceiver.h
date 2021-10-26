//
// Created by A on 2021/10/22.
//

#ifndef STOPWAIT_GBNRDTRECEIVER_H
#define STOPWAIT_GBNRDTRECEIVER_H

#include "RdtReceiver.h"

class GBNRdtReceiver : public RdtReceiver {

private:
    int expectSequenceNumberRcvd;    // 期待收到的下一个报文序号
    Packet lastAckPkt;                //上次发送的确认报文
    int seqSize;
public:
    GBNRdtReceiver();
    virtual ~GBNRdtReceiver();

public:

    void receive(const Packet &packet);    //接收报文，将被NetworkService调用
};


#endif //STOPWAIT_GBNRDTRECEIVER_H
