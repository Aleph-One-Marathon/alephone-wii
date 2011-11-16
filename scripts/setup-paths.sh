#!/bin/bash

source utils.sh


ALEPH_DIR=AlephOne
APPS_DIR=apps

PROJECTS_PATH=$(getAbsolutePath ../projects)

BUILD_PATH=$(getAbsolutePath ../build)
INCLUDE_PATH=${BUILD_PATH}/include
LIB_PATH=${BUILD_PATH}/lib

TARGET_PATH=$(getAbsolutePath ../target)
BIN_PATH=${TARGET_PATH}/wii/sd

