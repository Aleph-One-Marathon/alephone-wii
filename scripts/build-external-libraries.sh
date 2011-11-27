#!/bin/bash

source setup-build-env.sh


function failOnMissingDependency() {
	if [ $? != 0 ]; then
		local dependencyName=$1
		echo "You will need $dependencyName to compile external libraries. Try installing it with :"
		echo "sudo apt-get update"
		echo "sudo apt-get install $dependencyName"
		echo
		exit -1
	fi
}

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
echo


##############
# Import boost
BOOST_PATH=${PPC_INCLUDE_PATH}/boost
BOOST_SVN_TAG=Boost_$(echo ${BOOST_VERSION} | sed -E 's|\.|_|g')
BOOST_URL="http://svn.boost.org/svn/boost/tags/release/${BOOST_SVN_TAG}/boost"

echo "Getting boost ${BOOST_VERSION} from ${BOOST_URL} ..."
svn checkout ${BOOST_URL} ${BOOST_PATH} > /dev/null
if [ $? != 0 ]; then
	echo "Unable to download boost's source code."
	exit -1
fi
echo


###############
# Build netport
NETPORT_PATH=${PROJECTS_PATH}/netport
NETPORT_URL="http://diiscent.googlecode.com/svn/trunk/netport"

echo "Getting netport revision ${NETPORT_VERSION} from ${NETPORT_URL} ..."
svn checkout -r ${NETPORT_VERSION} ${NETPORT_URL} ${NETPORT_PATH} > /dev/null
if [ $? == 0 ]; then
	silentPushd ${NETPORT_PATH}
	echo "Building netport library..."
	patch -p0 -r - -s -N -i not_posix_source.patch > /dev/null 2>>${LOG_FILE}
	make > /dev/null 2>>${LOG_FILE}
	if [ $? == 0 ]; then
		silentPushd include
		mkdir -p ${BUILD_INCLUDE_PATH}
		find . -name '*.h' -exec cp --parents {} ${BUILD_INCLUDE_PATH}/ \;
		silentPopd

		mkdir -p ${BUILD_LIB_PATH}
		cp lib/*.a ${BUILD_LIB_PATH}/
	else
		echo "Unable to build netport library."
		exit -1
	fi
	silentPopd
else
	echo "Unable to download netport's source code."
	exit -1
fi
echo


#######################################################################################
# Build devkitPro's SDL (Because it contains configure scripts, while sdl-wii does not)
DEVKITPRO_SDL_PATH=${PROJECTS_PATH}/SDL-${DEVKITPRO_SDL_VERSION}
DEVKITPRO_SDL_FILE=SDL-${DEVKITPRO_SDL_VERSION}-wii.tar.bz2
DEVKITPRO_SDL_URL="http://sourceforge.net/projects/devkitpro/files/misc/${DEVKITPRO_SDL_FILE}/download"

silentPushd ${PROJECTS_PATH}
echo "Getting devkitPro's SDL from ${DEVKITPRO_SDL_URL} ..."
wget ${DEVKITPRO_SDL_URL} -O ${DEVKITPRO_SDL_FILE} > /dev/null 2>&1

if [ $? == 0 ]; then
	echo "Extracting devkitPro's SDL..."
	tar -xvf ${DEVKITPRO_SDL_FILE} > /dev/null
	rm -f ${DEVKITPRO_SDL_FILE}

	if [ $? == 0 ]; then
		silentPushd ${DEVKITPRO_SDL_PATH}
		echo "Building devkitPro's SDL library..."
		silentPopd
	else
		echo "Unable to extract devkitPro's SDL's source code."
		exit -1
	fi
else
	echo "Unable to download devkitPro's SDL's source code."
	exit -1
fi
silentPopd
echo


##########################################################################################
# Build sdl-wii (Because it contains sibling SDL projects, while devkitPro's SDL does not)
SDL_WII_PATH=${PROJECTS_PATH}/sdl-wii
SDL_WII_URL="http://sdl-wii.googlecode.com/svn/trunk"

echo "Getting sdl-wii revision ${SDL_WII_VERSION} from ${SDL_WII_URL} ..."
svn checkout -r ${SDL_WII_VERSION} ${SDL_WII_URL} ${SDL_WII_PATH} > /dev/null
if [ $? == 0 ]; then
	silentPushd ${SDL_WII_PATH}
	patch -p0 -r - -s -N -i makefiles.patch > /dev/null 2>>${LOG_FILE}
	export INSTALL_HEADER_DIR=${WII_INCLUDE_PATH}
	export INSTALL_LIB_DIR=${WII_LIB_PATH}
	echo "Building sdl-wii library..."
	make install > /dev/null 2>>${LOG_FILE}
	silentPopd
else
	echo "Unable to download wii-sdl's source code."
fi
echo

