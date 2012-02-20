#!/bin/bash

source setup-build-env.sh

#silentPushd ${SUB_PROJECTS_PATH}
#[ -d "SDL" ] || hg clone -b SDL-1.2 -u release-1.2.15 http://hg.libsdl.org/SDL SDL
#[ -d "SDL_image" ] || hg clone -b SDL-1.2 -u release-1.2.12 http://hg.libsdl.org/SDL_image SDL_image
#[ -d "SDL_mixer" ] || hg clone -b SDL-1.2 -u release-1.2.12 http://hg.libsdl.org/SDL_mixer SDL_mixer
#[ -d "SDL_net" ] || hg clone -b SDL-1.2 -u release-1.2.8 http://hg.libsdl.org/SDL_net SDL_net
#[ -d "SDL_ttf" ] || hg clone -b SDL-1.2 -u release-2.0.11 http://hg.libsdl.org/SDL_ttf SDL_ttf
#[ -d "smpeg" ] || svn checkout svn://svn.icculus.org/smpeg/trunk smpeg
#silentPopd

export PKG_CONFIG=`which pkg-config`

./build "${SUB_PROJECTS_PATH}/SDL" --prefix=${PORTLIBS_WII}

./build "${SUB_PROJECTS_PATH}/SDL_image" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} \
    --disable-tif --disable-webp

./build "${SUB_PROJECTS_PATH}/smpeg" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} \
    --disable-debug --disable-gtk-player --disable-opengl-player

./build "${SUB_PROJECTS_PATH}/SDL_mixer" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} --with-smpeg-prefix=${PORTLIBS_WII} \
    --enable-music-ogg --enable-music-ogg-tremor --disable-music-cmd --disable-music-mod --disable-music-fluidsynth-midi --disable-music-flac

./build "${SUB_PROJECTS_PATH}/SDL_net" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} \
    --disable-gui

./build "${SUB_PROJECTS_PATH}/SDL_ttf" --prefix=${PORTLIBS_WII} --with-sdl-prefix=${PORTLIBS_WII} --with-freetype-prefix=${PORTLIBS_PPC} \
    --without-x
