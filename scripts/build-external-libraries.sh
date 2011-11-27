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


BOOST_VERSION="1.47.0"
NETPORT_VERSION="6"
DEVKITPRO_SDL_VERSION="1.2"
SDL_WII_VERSION="99"


LOG_FILE=$(getAbsolutePath $0.log)
echo "Logging build errors to ${LOG_FILE}"
rm -f ${LOG_FILE}

echo


##############
# Import boost
BOOST_PATH=${PPC_INCLUDE_PATH}/boost
BOOST_SVN_TAG=Boost_$(echo ${BOOST_VERSION} | sed -E 's|\.|_|g')
BOOST_URL="http://svn.boost.org/svn/boost/tags/release/${BOOST_SVN_TAG}/boost"

if [ ! -x ${BOOST_PATH} ]; then
	echo "Getting boost ${BOOST_VERSION} from ${BOOST_URL} ..."
	svn export ${BOOST_URL} ${BOOST_PATH} > /dev/null
	if [ $? != 0 ]; then
		rm -rf ${BOOST_PATH}
		echo "Unable to download boost's source code."
		echo
		exit -1
	fi
fi

echo


###############
# Build netport
NETPORT_PATH=${SUB_PROJECTS_PATH}/netport
NETPORT_URL="http://diiscent.googlecode.com/svn/trunk/netport"

echo "Getting netport revision ${NETPORT_VERSION} from ${NETPORT_URL} ..."
svn checkout -r ${NETPORT_VERSION} ${NETPORT_URL} ${NETPORT_PATH} > /dev/null
failOnError "Unable to download netport's source code."

echo "Building netport library..."
silentPushd ${NETPORT_PATH}
patch -p0 -r - -s -N -i not_posix_source.patch > /dev/null 2>>${LOG_FILE}
make > /dev/null 2>>${LOG_FILE}
failOnError "Unable to build netport library."

silentPushd include
mkdir -p ${PROJECT_INCLUDE_PATH}
find . -name '*.h' -exec cp --parents {} ${PROJECT_INCLUDE_PATH}/ \;
silentPopd

mkdir -p ${PROJECT_LIB_PATH}
cp lib/*.a ${PROJECT_LIB_PATH}/
silentPopd

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
wget ${DEVKITPRO_SDL_URL} -O ${DEVKITPRO_SDL_FILE} > /dev/null 2>&1
failOnError "Unable to download devkitPro's SDL's source code."

echo "Extracting devkitPro's SDL..."
tar -xvf ${DEVKITPRO_SDL_FILE} > /dev/null && rm -f ${DEVKITPRO_SDL_FILE}
failOnError "Unable to extract devkitPro's SDL's source code."
silentPopd

echo "Configuring devkitPro's SDL library..."
mkdir -p ${DEVKITPRO_SDL_BUILD_PATH}
silentPushd ${DEVKITPRO_SDL_BUILD_PATH}
${configureScript} --prefix=${PORTLIBS_WII} \
		   --host=powerpc-eabi --build=powerpc-eabi-gnu \
		   --disable-shared --enable-static > /dev/null 2>>${LOG_FILE}
failOnError "Unable to configure devkitPro's SDL library's build process."
make install-bin > /dev/null 2>>${LOG_FILE}
failOnError "Unable to install devkitPro's SDL binaries."
make install-data > /dev/null 2>>${LOG_FILE}
failOnError "Unable to install devkitPro's SDL data."
make install-man > /dev/null 2>>${LOG_FILE}
failOnError "Unable to install devkitPro's SDL manual."
silentPopd

echo


###############
# Build sdl-wii
SDL_WII_PATH=${SUB_PROJECTS_PATH}/sdl-wii
SDL_WII_URL="http://sdl-wii.googlecode.com/svn/trunk"

echo "Getting sdl-wii revision ${SDL_WII_VERSION} from ${SDL_WII_URL} ..."
svn checkout -r ${SDL_WII_VERSION} ${SDL_WII_URL} ${SDL_WII_PATH} > /dev/null
failOnError "Unable to download wii-sdl's source code."

echo "Building sdl-wii library..."
silentPushd ${SDL_WII_PATH}
patch -p0 -r - -s -N -i makefiles.patch > /dev/null 2>>${LOG_FILE}
export INSTALL_HEADER_DIR=${WII_INCLUDE_PATH}
export INSTALL_LIB_DIR=${WII_LIB_PATH}
make install > /dev/null 2>>${LOG_FILE}
failOnError "Unable to build sdl-wii library."
silentPopd

echo

