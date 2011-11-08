#include "StreamLogTarget.h"


StreamLogTarget* StreamLogTarget::sSharedInstance = NULL;

StreamLogTarget::StreamLogTarget(FILE *defaultStream) : mDefaultStream(defaultStream) {
}

void StreamLogTarget::log(const char *format, va_list list) const {
    log(mDefaultStream, format, list);
}

void StreamLogTarget::log(FILE *stream, const char *format, ...) const {
	va_list list;
	va_start(list, format);
	log(stream, format, list);
	va_end(list);
}

void StreamLogTarget::log(FILE *stream, const char *format, va_list list) const {
    vfprintf(stream, format, list);
}

const StreamLogTarget& StreamLogTarget::getSharedInstance() {
    if (sSharedInstance == NULL) {
        sSharedInstance = new StreamLogTarget();
    }
    
    return *sSharedInstance;
}
