//
// Created by A on 2021/10/22.
//

#ifndef STOPWAIT_GBNRDTSENDER_H
#define STOPWAIT_GBNRDTSENDER_H


#include <vector>
#include "RdtSender.h"
#include "iostream"
class GBNRdtSender : public RdtSender {
private:
    int baseSeqNum;	                // the earliest pkt that hasn't been acked
    int nextSeqNum;                 // the next pkt that will be sent
    int windowSize;                 // the size of slide window
    int seqNumSize;                 // the size of seq number
    std::vector<Packet> pkts;       // packets that have been sent

public:
    bool getWaitingState();
    bool send(const Message &msg);
    void receive(const Packet &pkt);
    void timeoutHandler(int seqNum);
    void printSlideWindow(std::fstream& file, int RcvdAckNum);

public:
    GBNRdtSender();
    virtual ~GBNRdtSender();
};


#endif //STOPWAIT_GBNRDTSENDER_H
