#!/bin/bash

source setup-build-env.sh

export PKG_CONFIG_PATH="${PORTLIBS_WII}/lib/pkgconfig"
export PKG_CONFIG_LIBDIR="${PORTLIBS_PPC}/lib/pkgconfig"

CPPFLAGS="${CPPFLAGS} -I${PROJECT_INCLUDE_PATH}"
LDFLAGS="${LDFLAGS} -L${PROJECT_LIB_PATH}"
LIBS="${LIBS} -ljpeg -lnetport"

./build "${SUB_PROJECTS_PATH}/SDL" --prefix=${PORTLIBS_WII}
./build "${SUB_PROJECTS_PATH}/SDL_image" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII}
./build "${SUB_PROJECTS_PATH}/smpeg" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} --disable-debug

./build "${SUB_PROJECTS_PATH}/SDL_mixer" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} \
--with-smpeg-prefix=${PORTLIBS_WII} --enable-music-ogg --enable-music-ogg-tremor \
--disable-music-cmd --disable-music-mod --disable-music-fluidsynth-midi --disable-music-flac \

./build "${SUB_PROJECTS_PATH}/SDL_net" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII}
./build "${SUB_PROJECTS_PATH}/SDL_ttf" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII}
