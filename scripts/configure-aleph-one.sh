#!/bin/bash

source setup-build-env.sh


ALEPH_ONE_SOURCES_PATH=${SUB_PROJECTS_PATH}/aleph-one
ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one

########################################################################
# Prepare

#export MACHDEP="-mcpu=750 -meabi -mhard-float -mrvl -msdata=eabi"
#export DEFS="-DGEKKO -DHW_RVL"
#export LIBS="-lfat -lwiiuse -lbte -logc -lm -lwiikeyboard"

silentPushd ${ALEPH_ONE_SOURCES_PATH}
export NO_CONFIGURE="true"
./autogen.sh
failOnError "Unable to create aleph'one's configure scripts."
silentPopd

########################################################################
# Configure

SDL_LIBS="-lSDL_net -lSDL_ttf -lSDL_mixer -lSDL_image -lsmpeg -lSDL"
export LIBS="${SDL_LIBS} ${LIBS} -ljpeg -lpng -lfreetype -lvorbisidec -lz -lnetport"
export CPPFLAGS="${CPPFLAGS} -I${WII_INCLUDE_PATH}/SDL -I${PROJECT_INCLUDE_PATH}"
export LDFLAGS="${LDFLAGS} -L${PROJECT_LIB_PATH}"

#export ZZIP_CFLAGS=" "
#export ZZIP_LIBS=" "
#export PNG_CFLAGS=" "
#export PNG_LIBS=" "
#export VORBISFILE_CFLAGS=" "
#export VORBISFILE_LIBS=" "

#export ACLOCAL_FLAGS="-I${PORTLIBS_WII}/share/aclocal"
#export SDL_CONFIG="${PORTLIBS_WII}/bin/sdl-config"

mkdir -p ${BIN_PATH}/${ALEPH_DIR}
mkdir -p ${BIN_PATH}/${APPS_DIR}
mkdir -p ${ALEPH_ONE_BUILD_PATH}

prefix=${TARGET_PATH}
dataDir=${BIN_PATH}
binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

silentPushd ${ALEPH_ONE_BUILD_PATH}
${ALEPH_ONE_SOURCES_PATH}/configure --prefix=${prefix} --datadir=${dataDir} --bindir=${binDir} \
		   --host=powerpc-eabi --build=powerpc-eabi-gnu \
		   --disable-opengl --disable-speex --disable-zzip
failOnError "Unable to configure aleph-one's build process."
silentPopd
