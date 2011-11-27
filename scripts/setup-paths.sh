#!/bin/bash

source utils.sh


ALEPH_DIR=AlephOne
APPS_DIR=apps

PORTLIBS="${DEVKITPRO}/portlibs"
PORTLIBS_PPC="${PORTLIBS}/ppc"
PORTLIBS_WII="${PORTLIBS}/wii"

PPC_INCLUDE_PATH=${PORTLIBS_PPC}/include
PPC_LIB_PATH=${PORTLIBS_PPC}/lib

WII_INCLUDE_PATH=${PORTLIBS_WII}/include
WII_LIB_PATH=${PORTLIBS_WII}/lib

PROJECT_INCLUDE_PATH=$(getAbsolutePath ../include)
PROJECT_LIB_PATH=$(getAbsolutePath ../lib)

SUB_PROJECTS_PATH=$(getAbsolutePath ../projects)
BUILD_PATH=$(getAbsolutePath ../build)
TARGET_PATH=$(getAbsolutePath ../target)
BIN_PATH=${TARGET_PATH}/wii/sd

