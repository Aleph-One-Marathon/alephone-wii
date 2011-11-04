#include "ScreenLogTarget.h"
#include "shell.h" // For screen_printf


void ScreenLogTarget::log(const char *format, va_list list) const {
    screen_printf(format, list);
}
