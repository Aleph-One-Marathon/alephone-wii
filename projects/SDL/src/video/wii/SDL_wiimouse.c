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

    Sam Lantinga
    slouken@libsdl.org
*/

#include "SDL_wiivideo.h"
#include "SDL_wiimouse_c.h"


/* The implementation dependent data for the window manager cursor */
struct WMcursor {
	WiiCursor wii_cursor;
};

void WII_FreeWMCursor(_THIS, WMcursor *cursor) {
	if (cursor != NULL) {
		SDL_free(cursor);
	}
}

WMcursor *WII_CreateWMCursor(_THIS, Uint8 *data, Uint8 *mask, int w, int h, int hot_x, int hot_y) {
	WMcursor *cursor = (WMcursor*) SDL_malloc(sizeof(WMcursor));
	if ( cursor == NULL ) {
		SDL_OutOfMemory();
		return(NULL);
	}
	SDL_memset(cursor, 0, sizeof(*cursor));

	cursor->wii_cursor.size.width = w;
	cursor->wii_cursor.size.height = h;
	cursor->wii_cursor.hotSpot.x = hot_x;
	cursor->wii_cursor.hotSpot.y = hot_y;

	return cursor;
}

int WII_ShowWMCursor(_THIS, WMcursor *cursor) {
	if (cursor == NULL) {
		this->hidden->cursorInfo.cursor = NULL;
	} else {
		this->hidden->cursorInfo.cursor = &cursor->wii_cursor;
	}
	return 1;
}

void WII_MoveWMCursor(_THIS, int x, int y) {
	this->hidden->cursorInfo.pos.x = x;
	this->hidden->cursorInfo.pos.y = y;
}
