#!/bin/bash

source setup-paths.sh


export SDL_CONFIG="${PORTLIBS}/wii/bin/sdl-config"

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
export DEFS="-DGEKKO -D__WII__ -DHW_RVL -DSEND_LOGS_TO_NETWORK"
export LIBS="-lSDL_net -lSDL_ttf -lSDL_gfx -lSDL_mixer -lSDL_image -lsmpeg \
 -lSDL -ljpeg -lpng -lfreetype -lvorbisidec -lz \
 -lfat -lwiiuse -lbte -logc -lm -lwiikeyboard \
 -lnetport"
export CFLAGS="${MACHDEP} ${OPTIMS} ${DEFS}"
export CXXFLAGS="${CFLAGS}"

LIBOGC_INCLUDE_PATH="${DEVKITPRO}/libogc/include"
export CPPFLAGS=" \
 -I${LIBOGC_INCLUDE_PATH} \
 -I${PPC_INCLUDE_PATH} \
 -I${WII_INCLUDE_PATH} \
 -I${WII_INCLUDE_PATH}/SDL \
 -I${BUILD_INCLUDE_PATH}"

LIBOGC_LIB_PATH="${DEVKITPRO}/libogc/lib/wii"
export LDFLAGS="${MACHDEP} \
 -L${LIBOGC_LIB_PATH} \
 -L${PPC_LIB_PATH} \
 -L${WII_LIB_PATH} \
 -L${BUILD_LIB_PATH}"

export ACLOCAL_FLAGS="-I${PORTLIBS}/wii/share/aclocal"

export ZZIP_CFLAGS=" "
export ZZIP_LIBS=" "
export PNG_CFLAGS=" "
export PNG_LIBS=" "
export VORBISFILE_CFLAGS=" "
export VORBISFILE_LIBS=" "

