#!/bin/bash

source setup-build-env.sh


export LIBS="${LIBS} -ljpeg -lpng -lfreetype -lvorbisidec -lz -lnetport"
#export LDFLAGS="${LDFLAGS} -mcpu=750 -meabi -mhard-float -mrvl -msdata=eabi"
export LDFLAGS="${LDFLAGS} -mcpu=750 -meabi -mhard-float -mrvl"

export PNG_CFLAGS=" "
export PNG_LIBS=" "
export VORBISFILE_CFLAGS=" "
export VORBISFILE_LIBS=" "

prefix=${TARGET_PATH}
dataDir=${BIN_PATH}
binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

./build "${SUB_PROJECTS_PATH}/aleph-one" -M=no $@ --prefix=${prefix} --datadir=${dataDir} --bindir=${binDir} \
--with-sdl-prefix=${PORTLIBS_WII} --program-prefix="" --program-suffix=".elf" --program-transform-name="" \
--disable-opengl --disable-speex --disable-zzip
