#ifndef _STREAM_LOG_TARGET_H_
#define _STREAM_LOG_TARGET_H_

#include "LogTarget.h"
#include <cstdio>


class StreamLogTarget : public LogTarget {
public:
    StreamLogTarget(FILE *defaultStream = stdout);

    virtual void log(const char *format, va_list list) const;

    virtual void log(FILE *stream, const char *format, ...) const;
    virtual void log(FILE *stream, const char *format, va_list list) const;
    
    static const StreamLogTarget& getSharedInstance();

private:
    FILE* mDefaultStream;
    static StreamLogTarget* sSharedInstance;
};

#endif
