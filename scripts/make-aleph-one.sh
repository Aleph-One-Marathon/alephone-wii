#!/bin/bash

source setup-build-env.sh


./build "${SUB_PROJECTS_PATH}/aleph-one" -C=no $@

ALEPH_PATH=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
${ELF2DOL} ${ALEPH_PATH}/alephone.elf ${ALEPH_PATH}/boot.dol
