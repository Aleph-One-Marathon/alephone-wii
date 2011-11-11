#!/bin/sh

source setup-build-env.sh

ALEPH_ONE_SOURCES_PATH=${PROJECTS_PATH}/aleph-one
ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one


silentPushd ${ALEPH_ONE_SOURCES_PATH}
export NO_CONFIGURE="true"
autogen.sh
silentPopd


if [ $? == 0 ]; then
    mkdir -p ${BIN_PATH}/${ALEPH_DIR}
    mkdir -p ${BIN_PATH}/${APPS_DIR}
    mkdir -p ${ALEPH_ONE_BUILD_PATH}

    silentPushd ${ALEPH_ONE_BUILD_PATH}
    configureFile=${ALEPH_ONE_SOURCES_PATH}/configure
    dataDir=${BIN_PATH}
    binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

    ${configureFile} --datadir=${dataDir} --bindir=${binDir} --host=powerpc-eabi --build=powerpc-eabi-gnu --disable-opengl --disable-speex --disable-zzip
    silentPopd
fi
