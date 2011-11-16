#!/bin/bash

source setup-build-env.sh

ALEPH_ONE_BUILD_PATH=${BUILD_PATH}/aleph-one

# Patch to fix include order mess due to libogc's network.h \
# file being included after Aleph One's one
ln -s ${LIBOGC_INC}/network.h ${INCLUDE_PATH}/ogc_network.h

silentPushd ${ALEPH_ONE_BUILD_PATH}
make && make install

if [ $? == 0 ]; then
	ALEPH_PATH=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
	
	mv ${ALEPH_PATH}/alephone ${ALEPH_PATH}/alephone.elf
	${ELF2DOL} ${ALEPH_PATH}/alephone.elf ${ALEPH_PATH}/boot.dol
fi

silentPopd
