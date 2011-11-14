#!/bin/sh

source setup-build-env.sh


BOOST_VERSION="1.47.0"
NETPORT_VERSION="6"
SDL_WII_VERSION="99"


mkdir -p ${INCLUDE_PATH}
mkdir -p ${LIB_PATH}


##############
# Import boost
BOOST_PATH=${INCLUDE_PATH}/boost
BOOST_SVN_TAG=Boost_$(echo ${BOOST_VERSION} | sed -E 's|\.|_|g')

echo "Getting boost ${BOOST_VERSION}..."
svn checkout http://svn.boost.org/svn/boost/tags/release/${BOOST_SVN_TAG}/boost ${BOOST_PATH}
echo

###############
# Build netport
NETPORT_PATH=${PROJECTS_PATH}/netport

echo "Getting netport (revision ${NETPORT_VERSION})..."
svn checkout -r ${NETPORT_VERSION} http://diiscent.googlecode.com/svn/trunk/netport ${NETPORT_PATH}
if [ $? == 0 ]; then
	silentPushd ${NETPORT_PATH}
	echo "Building netport library..."
	make
	if [ $? == 0 ]; then
		silentPushd include
		find . -name '*.h' -exec cp --parents {} ${INCLUDE_PATH}/ \;
	    silentPopd
	    
	    cp lib/*.a ${LIB_PATH}/
	fi
	silentPopd
fi
echo


###############
# Build sdl-wii
SDL_WII_PATH=${PROJECTS_PATH}/sdl-wii

echo "Getting sdl-wii (revision ${SDL_WII_VERSION})..."
svn checkout -r ${SDL_WII_VERSION} http://sdl-wii.googlecode.com/svn/trunk ${SDL_WII_PATH}
if [ $? == 0 ]; then
	silentPushd ${SDL_WII_PATH}
	patch -p0 -s -N -i makefiles.patch
	export INSTALL_HEADER_DIR=${INCLUDE_PATH}
	export INSTALL_LIB_DIR=${LIB_PATH}
	echo "Building sdl-wii library..."
	make install
	silentPopd
fi
echo
