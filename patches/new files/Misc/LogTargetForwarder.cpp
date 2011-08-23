#include "LogTargetForwarder.h"
#include <cstring>
#include <cstdio>


static const int MAX_LOG_ENTRY_SIZE = 4096;

void LogTargetForwarder::log(const char *format, va_list list) const {
    char logEntryBuffer[MAX_LOG_ENTRY_SIZE];
    int logEntrySize = vsnprintf(logEntryBuffer, MAX_LOG_ENTRY_SIZE, format, list);
    if (logEntrySize == -1) {
        logEntrySize = MAX_LOG_ENTRY_SIZE - 1;
    }

    for (std::vector<const LogTarget*>::const_iterator it = mLogTargets.begin(); it != mLogTargets.end(); it++) {
        const LogTarget* logTarget = *it;
        logTarget->log(logEntryBuffer);
    }
}

void LogTargetForwarder::addLogTarget(const LogTarget* logTarget) {
    mLogTargets.push_back(logTarget);
}
