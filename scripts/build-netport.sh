#!/bin/bash

source setup-build-env.sh


patch --version > /dev/null 2>&1
failOnMissingDependency "patch"

svn --version > /dev/null 2>&1
failOnMissingDependency "subversion"


NETPORT_VERSION="6"


LOG_FILE=${BUILD_PATH}/$0.log
echo "Logging build errors to ${LOG_FILE}"
mkdir -p ${BUILD_PATH}
rm -f ${LOG_FILE}

echo


###############
# Build netport
NETPORT_PATH=${SUB_PROJECTS_PATH}/netport
NETPORT_URL="http://diiscent.googlecode.com/svn/trunk/netport"

echo "Getting netport revision ${NETPORT_VERSION} from ${NETPORT_URL} ..."
svn checkout -r ${NETPORT_VERSION} ${NETPORT_URL} ${NETPORT_PATH} >> ${LOG_FILE} 2>&1
failOnError "Unable to download netport's source code."

echo "Building netport library..."
silentPushd ${NETPORT_PATH}
patch -p0 -r - -s -N -i not_posix_source.patch >> ${LOG_FILE} 2>&1
make >> ${LOG_FILE} 2>&1
failOnError "Unable to build netport library."

silentPushd include
mkdir -p ${PROJECT_INCLUDE_PATH}
find . -name '*.h' -exec cp --parents {} ${PROJECT_INCLUDE_PATH}/ \;
silentPopd

mkdir -p ${PROJECT_LIB_PATH}
cp lib/*.a ${PROJECT_LIB_PATH}/
silentPopd

echo
