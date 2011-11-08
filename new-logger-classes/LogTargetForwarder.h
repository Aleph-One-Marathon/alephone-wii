#ifndef _LOG_TARGET_FORWARDER_H_
#define _LOG_TARGET_FORWARDER_H_

#include "LogTarget.h"
#include <vector>


class LogTargetForwarder : public LogTarget {
public:
    virtual void log(const char *format, va_list list) const;
    
    void addLogTarget(const LogTarget* logTarget);

private:
    std::vector<const LogTarget*> mLogTargets;
};

#endif
