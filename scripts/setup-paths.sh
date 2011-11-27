#!/bin/bash

source utils.sh


ALEPH_DIR=AlephOne
APPS_DIR=apps

PROJECTS_PATH=$(getAbsolutePath ../projects)
BUILD_PATH=$(getAbsolutePath ../build)
TARGET_PATH=$(getAbsolutePath ../target)
BIN_PATH=${TARGET_PATH}/wii/sd

PORTLIBS="${DEVKITPRO}/portlibs"

PPC_INCLUDE_PATH=${PORTLIBS}/ppc/include
PPC_LIB_PATH=${PORTLIBS}/ppc/lib

WII_INCLUDE_PATH=${PORTLIBS}/wii/include
WII_LIB_PATH=${PORTLIBS}/wii/lib

BUILD_INCLUDE_PATH=${BUILD_PATH}/include
BUILD_LIB_PATH=${BUILD_PATH}/lib

