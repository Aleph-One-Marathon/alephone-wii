#!/bin/sh

function spushd {
    pushd $1 > /dev/null
}

function spopd {
    popd > /dev/null
}

function getAbsolutePath {
    local D=`dirname ${1}`
    local B=`basename ${1}`
    echo "`cd \"${D}\" 2>/dev/null && pwd || echo \"${D}\"`/${B}"
}

function isStateDone {
    if [ -f ${1}.done ]; then
        echo "true"
    else
        echo "false"
    fi
}

function setStateDone {
    if [ $2 ]; then
        touch ${1}.done
    else
        rm ${1}.done
    fi
}

function getSources {
    mkdir -p ${SOURCES_PATH}
    spushd ${SOURCES_PATH}
    if [ $(isStateDone fetch_sources) = "false" ]; then
        echo "Fetching Aleph-One's source code..."
        svn checkout -r 4521 -q https://marathon.svn.sourceforge.net/svnroot/marathon/trunk .
        setStateDone fetch_sources $?
    fi
    FETCH_SOURCES_DONE=$(isStateDone fetch_sources)
    spopd
}

function setupBuildEnvironment {
    source setup-build-env.sh
}

function applyPatches {
    local patchesPath=$(getAbsolutePath ${PATCHES_DIR})

    spushd ${SOURCES_PATH}
    for patchFile in $(find ${patchesPath} -name '*.diff')
    do
        patch -N -p0 -i ${patchFile}
    done
    spopd
}

function configureBuild {
    spushd ${SOURCES_PATH}
    if [ ${FETCH_SOURCES_DONE} = "true" ] && [ $(isStateDone autogen) = "false" ]; then
        export NO_CONFIGURE="true"
        autogen.sh
        setStateDone autogen $?
    fi
    AUTOGEN_DONE=$(isStateDone autogen)
    spopd

    mkdir -p ${BIN_PATH}/${ALEPH_DIR}
    mkdir -p ${BIN_PATH}/${APPS_DIR}
    mkdir -p ${BUILD_PATH}
    spushd ${BUILD_PATH}
    if [ ${AUTOGEN_DONE} = "true" ] && [ $(isStateDone configure) = "false" ]; then
        local configureFile=${SOURCES_PATH}/configure
        local dataDir=${BIN_PATH}
        local binDir=${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}

        ${configureFile} --datadir=${dataDir} --bindir=${binDir} --host=powerpc-eabi --build=powerpc-eabi-gnu --disable-opengl --disable-speex --disable-zzip
        setStateDone configure $?
    fi
    CONFIGURE_DONE=$(isStateDone configure)
    spopd
}

function build {
    spushd ${BUILD_PATH}
    if [ ${CONFIGURE_DONE} = "true" ]; then
#        make && make install
        make
        cp Source_Files/alephone ${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}/alephone
    fi
    MAKE_INSTALL_SUCCESS=$?
    spopd

    spushd ${BIN_PATH}/${APPS_DIR}/${ALEPH_DIR}
    if [ ${MAKE_INSTALL_SUCCESS} == 0 ]; then
        mv alephone alephone.elf
        ${ELF2DOL} alephone.elf boot.dol
    fi
    spopd
}


FLAVOR=${1}
PATCHES_DIR=patches
ALEPH_DIR=AlephOne
APPS_DIR=apps

SOURCES_PATH=$(getAbsolutePath ${ALEPH_DIR})
BUILD_PATH=$(getAbsolutePath ${FLAVOR}/build)
BIN_PATH=$(getAbsolutePath ${FLAVOR}/bin)

getSources
setupBuildEnvironment
# applyPatches
configureBuild
build
