#!/bin/bash

source setup-build-env.sh


#export MACHDEP="-mcpu=750 -meabi -mhard-float -mrvl -msdata=eabi"
#export DEFS="-DGEKKO -DHW_RVL"
#export LIBS="-lfat -lwiiuse -lbte -logc -lm -lwiikeyboard"

export LIBS="${LIBS} -ljpeg -lpng -lfreetype -lvorbisidec -lz -lnetport"

export ZZIP_CFLAGS=" "
export ZZIP_LIBS=" "
export PNG_CFLAGS=" "
export PNG_LIBS=" "
export VORBISFILE_CFLAGS=" "
export VORBISFILE_LIBS=" "

prefix=${TARGET_PATH}
dataDir=${BIN_PATH}
binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

./build "${SUB_PROJECTS_PATH}/aleph-hone" -v -M=no --prefix=${prefix} --datadir=${dataDir} --bindir=${binDir} \
--prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} \
--disable-opengl --disable-speex --disable-zzip
