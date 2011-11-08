#!/bin/sh

source utils.sh
source setup-build-env.sh
source setup-paths.sh


silentPushd ${SOURCES_PATH}
export NO_CONFIGURE="true"
autogen.sh
silentPopd


if [ $? == 0 ]; then
    mkdir -p ${BIN_PATH}/${ALEPH_DIR}
    mkdir -p ${BIN_PATH}/${APPS_DIR}
    mkdir -p ${BUILD_PATH}

    silentPushd ${BUILD_PATH}
    configureFile=${SOURCES_PATH}/configure
    dataDir=${BIN_PATH}
    binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

    ${configureFile} --datadir=${dataDir} --bindir=${binDir} --host=powerpc-eabi --build=powerpc-eabi-gnu --disable-opengl --disable-speex --disable-zzip
    silentPopd
fi
