#!/bin/bash

source setup-build-env.sh


svn --version > /dev/null 2>&1
failOnMissingDependency "subversion"


BOOST_VERSION="1.47.0"


LOG_FILE=${BUILD_PATH}/$0.log
echo "Logging build errors to ${LOG_FILE}"
mkdir -p ${BUILD_PATH}
rm -f ${LOG_FILE}

echo


##############
# Import boost
BOOST_PATH=${PPC_INCLUDE_PATH}/boost
BOOST_SVN_TAG=Boost_$(echo ${BOOST_VERSION} | sed -E 's|\.|_|g')
BOOST_URL="http://svn.boost.org/svn/boost/tags/release/${BOOST_SVN_TAG}/boost"

if [ ! -x ${BOOST_PATH} ]; then
	echo "Getting boost ${BOOST_VERSION} from ${BOOST_URL} ..."
	svn export ${BOOST_URL} ${BOOST_PATH} >> ${LOG_FILE} 2>&1
	if [ $? != 0 ]; then
		rm -rf ${BOOST_PATH}
		echo "Unable to download boost's source code."
		echo
		exit -1
	fi
fi

echo
