#!/bin/bash

source setup-build-env.sh

ALEPH_ONE_SOURCES_PATH=${SUB_PROJECTS_PATH}/aleph-one
ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one


silentPushd ${ALEPH_ONE_SOURCES_PATH}
export NO_CONFIGURE="true"
./autogen.sh
failOnError "Unable to create aleph'one's configure scripts."
silentPopd

mkdir -p ${BIN_PATH}/${ALEPH_DIR}
mkdir -p ${BIN_PATH}/${APPS_DIR}
mkdir -p ${ALEPH_ONE_BUILD_PATH}

configureScript=${ALEPH_ONE_SOURCES_PATH}/configure
prefix=${TARGET_PATH}
dataDir=${BIN_PATH}
binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

SDL_LIBS="-lSDL_net -lSDL_ttf -lSDL_gfx -lSDL_mixer -lSDL_image -lsmpeg -lSDL"
export LIBS="${SDL_LIBS} ${LIBS} -ljpeg -lpng -lfreetype -lvorbisidec -lz -lnetport"
export CPPFLAGS="${CPPFLAGS} -I${WII_INCLUDE_PATH}/SDL -I${PROJECT_INCLUDE_PATH}"
export LDFLAGS="${LDFLAGS} -L${PROJECT_LIB_PATH}"

silentPushd ${ALEPH_ONE_BUILD_PATH}
${configureScript} --prefix=${prefix} --datadir=${dataDir} --bindir=${binDir} \
		   --host=powerpc-eabi --build=powerpc-eabi-gnu \
		   --disable-opengl --disable-speex --disable-zzip
failOnError "Unable to configure aleph-one's build process."
silentPopd
