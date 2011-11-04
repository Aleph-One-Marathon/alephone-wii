#include "LogTarget.h"
#include "LogTargetForwarder.h"
#include "StreamLogTarget.h"
#include "ScreenLogTarget.h"
#include "TCPLogTarget.h"


LogTarget* LogTarget::sOutLogTarget = NULL;
LogTarget* LogTarget::sErrorLogTarget = NULL;
LogTarget* LogTarget::sScreenLogTarget = NULL;

void LogTarget::log(const char *format, ...) const {
	va_list list;
	va_start(list, format);
	log(format, list);
	va_end(list);
}

const LogTarget& LogTarget::getOutLogTarget() {
    if (sOutLogTarget == NULL) {
        sOutLogTarget = newCustomLogTarget(new StreamLogTarget(stdout));
    }

    return *sOutLogTarget;
}

const LogTarget& LogTarget::getErrorLogTarget() {
    if (sErrorLogTarget == NULL) {
        sErrorLogTarget = newCustomLogTarget(new StreamLogTarget(stderr));
    }

    return *sErrorLogTarget;
}

const LogTarget& LogTarget::getScreenLogTarget() {
    if (sScreenLogTarget == NULL) {
        sScreenLogTarget = newCustomLogTarget(new ScreenLogTarget());
    }

    return *sScreenLogTarget;
}

LogTarget* LogTarget::newCustomLogTarget(LogTarget* logTarget) {
#if defined(SEND_LOGS_TO_NETWORK)
    LogTargetForwarder* logTargetForwarder = new LogTargetForwarder();
    logTargetForwarder->addLogTarget(logTarget);
    logTargetForwarder->addLogTarget(&TCPLogTarget::getSharedInstance());
    
    return logTargetForwarder;
#else
    return logTarget;
#endif
}
