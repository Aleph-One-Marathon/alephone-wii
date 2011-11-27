#!/bin/bash

source setup-paths.sh


PREFIX=${DEVKITPPC}/bin/powerpc-eabi-
export AS=${PREFIX}as
export CC=${PREFIX}gcc
export CXX=${PREFIX}g++
export AR=${PREFIX}ar cru
export LD=${PREFIX}gcc
export RANLIB=${PREFIX}ranlib
export STRIP=${PREFIX}strip
export OBJCOPY=${PREFIX}objcopy
export ELF2DOL=${DEVKITPPC}/bin/elf2dol

export MACHDEP="-g -mcpu=750 -meabi -mhard-float -mrvl"
export OPTIMS="" #-O3 -ffunction-sections -fdata-sections -fmodulo-sched"
export DEFS="-DGEKKO -DHW_RVL"
export LIBS="-lfat -lwiiuse -lbte -logc -lm -lwiikeyboard"
export CFLAGS="${MACHDEP} ${OPTIMS} ${DEFS}"
export CXXFLAGS="${CFLAGS}"

LIBOGC_INCLUDE_PATH="${DEVKITPRO}/libogc/include"
export CPPFLAGS=" ${MACHDEP} \
 -I${LIBOGC_INCLUDE_PATH} \
 -I${PPC_INCLUDE_PATH} \
 -I${WII_INCLUDE_PATH}"

LIBOGC_LIB_PATH="${DEVKITPRO}/libogc/lib/wii"
export LDFLAGS="${MACHDEP} \
 -L${LIBOGC_LIB_PATH} \
 -L${PPC_LIB_PATH} \
 -L${WII_LIB_PATH}"

export ZZIP_CFLAGS=" "
export ZZIP_LIBS=" "
export PNG_CFLAGS=" "
export PNG_LIBS=" "
export VORBISFILE_CFLAGS=" "
export VORBISFILE_LIBS=" "

export ACLOCAL_FLAGS="-I${PORTLIBS_WII}/share/aclocal"
export SDL_CONFIG="${PORTLIBS_WII}/bin/sdl-config"
