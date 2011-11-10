#!/bin/sh

source setup-build-env.sh

ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one


silentPushd ${ALEPH_ONE_BUILD_PATH}
make && make install
#make

if [ $? == 0 ]; then
	ALEPH_PATH=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
	
#	mkdir -p ${ALEPH_PATH}
#	mv Source_Files/alephone ${ALEPH_PATH}/alephone.elf
	mv ${ALEPH_PATH}/alephone ${ALEPH_PATH}/alephone.elf
	${ELF2DOL} ${ALEPH_PATH}/alephone.elf ${ALEPH_PATH}/boot.dol
fi

silentPopd
