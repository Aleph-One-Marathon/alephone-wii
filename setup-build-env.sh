#!/bin/sh

export LIBOGC_INC="${DEVKITPRO}/libogc/include"
export LIBOGC_LIB="${DEVKITPRO}/libogc/lib/wii"
export PORTLIBS="${DEVKITPRO}/portlibs/ppc"

export PATH="${PORTLIBS}/bin:$PATH"

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
export DEFS="-DGEKKO -D__WII__ -DHW_RVL"
export LIBS="-ldb -lnetport -lSDL_net -lSDL_ttf -lSDL_gfx -lSDL_mixer -lSDL_image -lsmpeg -lSDL -ljpeg -lpng -lfreetype -lvorbisidec -lz -lfat -lwiiuse -lbte -logc -lm -lwiikeyboard"
export CFLAGS="${MACHDEP} ${OPTIMS} ${DEFS}"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-I${LIBOGC_INC} -I${PORTLIBS}/include -I${PORTLIBS}/include/SDL"
export LDFLAGS="${MACHDEP} -L${LIBOGC_LIB} -L${PORTLIBS}/lib"

export ZZIP_CFLAGS=" "
export ZZIP_LIBS=" "
export PNG_CFLAGS=" "
export PNG_LIBS=" "
export VORBISFILE_CFLAGS=" "
export VORBISFILE_LIBS=" "