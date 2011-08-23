#ifndef _LOG_TARGET_H_
#define _LOG_TARGET_H_

#include <cstdarg>


class LogTarget {
public:
    virtual void log(const char *format, ...) const;
    virtual void log(const char *format, va_list list) const = 0;

    static const LogTarget& getOutLogTarget();
    static const LogTarget& getErrorLogTarget();
    static const LogTarget& getScreenLogTarget();
    
    static LogTarget* newCustomLogTarget(LogTarget* logTarget);
    
private:
    static LogTarget* sOutLogTarget;
    static LogTarget* sErrorLogTarget;
    static LogTarget* sScreenLogTarget;
};

#endif
