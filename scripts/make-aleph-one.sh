#!/bin/bash

source setup-build-env.sh

ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one
ALEPH_PATH=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}


# Patch to fix include order mess due to libogc's network.h file \
# being included after Aleph One's one
mkdir -p ${PROJECT_INCLUDE_PATH}
ln -s ${LIBOGC_INCLUDE_PATH}/network.h ${PROJECT_INCLUDE_PATH}/ogc_network.h


silentPushd ${ALEPH_ONE_BUILD_PATH}
make install
failOnError "Unable to build aleph-wone"
mv ${ALEPH_PATH}/alephone ${ALEPH_PATH}/alephone.elf
${ELF2DOL} ${ALEPH_PATH}/alephone.elf ${ALEPH_PATH}/boot.dol
silentPopd
