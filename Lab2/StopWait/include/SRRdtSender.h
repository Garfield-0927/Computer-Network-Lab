//
// Created by A on 2021/10/23.
//

#ifndef STOPWAIT_SRRDTSENDER_H
#define STOPWAIT_SRRDTSENDER_H

#include <vector>
#include <fstream>
#include "RdtSender.h"

class SRRdtSender : public RdtSender {
private:
    int windowSize;
    int seqNumSize;
    int baseSeqNum;
    int nextSeqNum;
    std::vector<Packet> pkts;

public:
    bool getWaitingState();
    bool send(const Message &msg);
    void receive(const Packet &pkt);
    void timeoutHandler(int seqNum);
    void printSlideWindow(std::fstream& file, int rcvdAckNum);

public:
    SRRdtSender();
    virtual ~SRRdtSender();
};

#endif //STOPWAIT_SRRDTSENDER_H
