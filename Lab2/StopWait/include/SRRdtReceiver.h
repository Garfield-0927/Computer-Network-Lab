//
// Created by A on 2021/10/23.
//

#ifndef STOPWAIT_SRRDTRECEIVER_H
#define STOPWAIT_SRRDTRECEIVER_H

#include <vector>
#include <fstream>
#include "RdtReceiver.h"

class SRRdtReceiver : public RdtReceiver {

private:
    int baseSeqNum;
    static const int windowSize = 4;
    static const int seqSize = 8;
    Packet lastAckPkt;
    Packet pkts[windowSize];


public:
    SRRdtReceiver();
    virtual ~SRRdtReceiver();

public:
    void receive(const Packet &pkt);
    bool isInWindow(int seqNum);
    void printSlideWindow(std::fstream& file, int rcvdAckNum);


};

#endif //STOPWAIT_SRRDTRECEIVER_H
