#!/bin/bash

source setup-build-env.sh


patch --version > /dev/null 2>&1
failOnMissingDependency "patch"

svn --version > /dev/null 2>&1
failOnMissingDependency "subversion"

wget --version > /dev/null 2>&1
failOnMissingDependency "wget"

tar --version > /dev/null 2>&1
failOnMissingDependency "tar"


DEVKITPRO_SDL_VERSION="1.2"
SDL_WII_VERSION="99"


LOG_FILE=${BUILD_PATH}/$0.log
echo "Outputting messages to ${LOG_FILE}"
mkdir -p ${BUILD_PATH}
rm -f ${LOG_FILE}

echo


############################################################################################
# Configure devkitPro's SDL (Because it generates configure scripts, while sdl-wii does not)
# Don't actually build it because the generated library does not work as expected
DEVKITPRO_SDL_PATH=${SUB_PROJECTS_PATH}/SDL-${DEVKITPRO_SDL_VERSION}
DEVKITPRO_SDL_FILE=SDL-${DEVKITPRO_SDL_VERSION}-wii.tar.bz2
DEVKITPRO_SDL_URL="http://sourceforge.net/projects/devkitpro/files/misc/${DEVKITPRO_SDL_FILE}/download"
DEVKITPRO_SDL_BUILD_PATH=${BUILD_PATH}/SDL-${DEVKITPRO_SDL_VERSION}
configureScript=${DEVKITPRO_SDL_PATH}/configure

echo "Getting devkitPro's SDL from ${DEVKITPRO_SDL_URL} ..."
silentPushd ${SUB_PROJECTS_PATH}
wget ${DEVKITPRO_SDL_URL} -O ${DEVKITPRO_SDL_FILE} >> ${LOG_FILE} 2>&1
failOnError "Unable to download devkitPro's SDL's source code."

echo "Extracting devkitPro's SDL..."
tar -xvf ${DEVKITPRO_SDL_FILE} >> ${LOG_FILE} 2>&1 && rm -f ${DEVKITPRO_SDL_FILE}
failOnError "Unable to extract devkitPro's SDL's source code."
silentPopd

echo "Configuring devkitPro's SDL library..."
mkdir -p ${DEVKITPRO_SDL_BUILD_PATH}
silentPushd ${DEVKITPRO_SDL_BUILD_PATH}
${configureScript} --prefix=${PORTLIBS_WII} \
		   --host=powerpc-eabi --build=powerpc-eabi-gnu \
		   --disable-shared --enable-static >> ${LOG_FILE} 2>&1
failOnError "Unable to configure devkitPro's SDL library's build process."
make install-bin >> ${LOG_FILE} 2>&1
failOnError "Unable to install devkitPro's SDL binaries."
make install-data >> ${LOG_FILE} 2>&1
failOnError "Unable to install devkitPro's SDL data."
make install-man >> ${LOG_FILE} 2>&1
failOnError "Unable to install devkitPro's SDL manual."
silentPopd

echo


###############
# Build sdl-wii
SDL_WII_PATH=${SUB_PROJECTS_PATH}/sdl-wii
SDL_WII_URL="http://sdl-wii.googlecode.com/svn/trunk"

echo "Getting sdl-wii revision ${SDL_WII_VERSION} from ${SDL_WII_URL} ..."
svn checkout -r ${SDL_WII_VERSION} ${SDL_WII_URL} ${SDL_WII_PATH} >> ${LOG_FILE} 2>&1
failOnError "Unable to download wii-sdl's source code."

echo "Building sdl-wii library..."
silentPushd ${SDL_WII_PATH}
patch -p0 -r - -i makefiles.patch >> ${LOG_FILE} 2>&1
export INSTALL_HEADER_DIR=${WII_INCLUDE_PATH}
export INSTALL_LIB_DIR=${WII_LIB_PATH}
make install >> ${LOG_FILE} 2>&1
failOnError "Unable to build sdl-wii library."
silentPopd

echo
