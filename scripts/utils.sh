#!/bin/bash

function silentPushd() {
    pushd $1 > /dev/null
}

function silentPopd() {
    popd > /dev/null
}

function getAbsolutePath() {
    local D=`dirname ${1}`
    local B=`basename ${1}`
    echo "`cd \"${D}\" 2>/dev/null && pwd || echo \"${D}\"`/${B}"
}

function failOnMissingDependency() {
	if [ $? != 0 ]; then
		local dependencyName=$1
		echo "You will need $dependencyName to compile external libraries. Try installing it with :"
		echo "sudo apt-get update"
		echo "sudo apt-get install $dependencyName"
		exit -1
	fi
}

function failOnError() {
	if [ $? != 0 ]; then
		local message=$1
		echo ${message}
		exit -1
	fi
}
