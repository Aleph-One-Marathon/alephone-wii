#!/bin/bash

function silentPushd {
    pushd $1 > /dev/null
}

function silentPopd {
    popd > /dev/null
}

function getAbsolutePath {
    local D=`dirname ${1}`
    local B=`basename ${1}`
    echo "`cd \"${D}\" 2>/dev/null && pwd || echo \"${D}\"`/${B}"
}
