#!/bin/bash

source setup-paths.sh


PREFIX=${DEVKITPPC}/bin/powerpc-eabi-
export AS=${PREFIX}as
export CC=${PREFIX}gcc
export CXX=${PREFIX}g++
export AR=${PREFIX}ar cru
export LD=${PREFIX}ld
export NM=${PREFIX}nm
export RANLIB=${PREFIX}ranlib
export STRIP=${PREFIX}strip
export OBJCOPY=${PREFIX}objcopy
export OBJDUMP=${PREFIX}objdump
export ELF2DOL=${DEVKITPPC}/bin/elf2dol

LIBOGC_INCLUDE_PATH="${DEVKITPRO}/libogc/include"
export CPPFLAGS="${CPPFLAGS} -I${LIBOGC_INCLUDE_PATH} \
 -I${PPC_INCLUDE_PATH} \
 -I${WII_INCLUDE_PATH}"

LIBOGC_LIB_PATH="${DEVKITPRO}/libogc/lib/wii"
export LDFLAGS="${LDFLAGS} -L${LIBOGC_LIB_PATH} \
 -L${PPC_LIB_PATH} \
 -L${WII_LIB_PATH}"
