#!/bin/sh

source utils.sh
source setup-build-env.sh
source setup-paths.sh


silentPushd ${BUILD_PATH}
#make && make install
make
silentPopd


if [ $? ]; then
	silentPushd ${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
	cp Source_Files/alephone ${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}/alephone.elf
    ${ELF2DOL} alephone.elf boot.dol
	silentPopd
fi
