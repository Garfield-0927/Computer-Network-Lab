//
// Created by A on 2021/10/24.
//

#ifndef STOPWAIT_TCPRDTSENDER_H
#define STOPWAIT_TCPRDTSENDER_H


#include <vector>
#include "RdtSender.h"
#include "iostream"
class TCPRdtSender : public RdtSender {
private:
    int baseSeqNum;	                // the earliest pkt that hasn't been acked
    int nextSeqNum;                 // the next pkt that will be sent
    int windowSize;                 // the size of slide window
    int seqNumSize;                 // the size of seq number
    int duplicateAckNum;            // the number of duplicate ack that sender has received
    std::vector<Packet> pkts;       // packets that have been sent

public:
    bool getWaitingState();
    bool send(const Message &msg);
    bool isInWindow(int seqNum);
    void receive(const Packet &pkt);
    void timeoutHandler(int seqNum);
    void printSlideWindow(std::fstream& file);

public:
    TCPRdtSender();
    virtual ~TCPRdtSender();
};

#endif //STOPWAIT_TCPRDTSENDER_H
