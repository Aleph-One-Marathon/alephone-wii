#ifndef _TCP_LOG_TARGET_H_
#define _TCP_LOG_TARGET_H_

#include "LogTarget.h"
#include <string>


class TCPLogTarget : public LogTarget {
public:
    TCPLogTarget(const std::string& hostName, uint16_t hostPort);
    virtual ~TCPLogTarget();
    
    virtual void log(const char *format, va_list list) const;

    static const TCPLogTarget& getSharedInstance();

private:
    void setupLogSocket(const std::string& hostName, uint16_t hostPort);
    void closeLogSocket();
    
    static TCPLogTarget* sSharedInstance;
    
    int mSocket;
};

#endif
