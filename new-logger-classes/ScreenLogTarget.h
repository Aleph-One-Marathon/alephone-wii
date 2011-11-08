#ifndef _SCREEN_LOG_TARGET_H_
#define _SCREEN_LOG_TARGET_H_

#include "LogTarget.h"


class ScreenLogTarget : public LogTarget {
public:
    virtual void log(const char *format, va_list list) const;
};

#endif
