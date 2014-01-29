/*
    SDL - Simple DirectMedia Layer
    Copyright (C) 1997-2006 Sam Lantinga

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

    Tantric, 2009
*/
#include "SDL_config.h"

#ifndef _SDL_wiivideo_h
#define _SDL_wiivideo_h

/* SDL internal includes */
#include "../SDL_sysvideo.h"

/* OGC includes */
#include <ogc/gx_struct.h>

/* Hidden "this" pointer for the video functions */
#define _THIS	SDL_VideoDevice *this

typedef struct {
	struct {
		u8 width;
		u8 height;
	} size;
	struct {
		s16 x;
		s16 y;
	} hotSpot;
} WiiCursor;

/* Private display data */
struct SDL_PrivateVideoData
{
	Uint16             palette[256];

	Uint8*					buffer;

	Uint8*					texturemem;
	size_t					texturemem_size;

	struct CursorInfo {
		struct {
			s16 x;
			s16 y;
		} pos;
		WiiCursor*			cursor;
	} cursorInfo;

	int						width;
	int						height;
	int						pitch;
};

void WII_InitVideoSystem();
void WII_ChangeSquare(int xscale, int yscale, int xshift, int yshift);

#endif /* _SDL_wiivideo_h */
