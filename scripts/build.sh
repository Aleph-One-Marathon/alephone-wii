#!/bin/sh

source utils.sh
source setup-build-env.sh
source setup-paths.sh


silentPushd ${BUILD_PATH}
#make && make install
make

if [ $? == 0 ]; then
	ALEPH_PATH=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
	
	mkdir -p ${ALEPH_PATH}
	mv Source_Files/alephone ${ALEPH_PATH}/alephone.elf
	${ELF2DOL} ${ALEPH_PATH}/alephone.elf ${ALEPH_PATH}/boot.dol
fi

silentPopd
