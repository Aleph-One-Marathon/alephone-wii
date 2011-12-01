/*

	Copyright (C) 1991-2001 and beyond by Bungie Studios, Inc.
	and the "Aleph One" developers.
 
	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	This license is contained in the file "COPYING",
	which is included with this source code; it is available online at
	http://www.gnu.org/licenses/gpl.html

*/
/*
 *  csalerts_sdl.cpp - Game alerts and debugging support, SDL implementation
 *
 *  Written in 2000 by Christian Bauer

April 22, 2003 (Woody Zenfell):
        Now dumping alert text etc. with Logging as well
 */

#include "cseries.h"

#include <stdio.h>

#include "Logging.h"

#include "sdl_dialogs.h"
#include "sdl_widgets.h"

#if defined(__WIN32__)
#include <windows.h>
#include <tchar.h>
#include <shlobj.h>
#else
#include <sys/wait.h>
#endif

/*
 *  Display alert message
 */

#ifdef __MACOSX__
extern void system_alert_user(const char*, short);
extern bool system_alert_choose_scenario(char *chosen_dir);
#else
void system_alert_user(const char* message, short severity)
{
#if defined(__WIN32__)
	UINT type;
	if (severity == infoError) {
		type = MB_ICONWARNING|MB_OK;
	} else {
		type = MB_ICONERROR|MB_OK;
	}
	MessageBox(NULL, message, severity == infoError ? "Warning" : "Error", type);
#else
	fprintf(stderr, "%s: %s\n", severity == infoError ? "INFO" : "FATAL", message);
#endif	
}

#if defined(__WIN32__)
// callback to set starting location for Win32 "choose scenario" dialog
static int CALLBACK browse_callback_proc(HWND hwnd, UINT msg, LPARAM lparam, LPARAM lpdata)
{
	TCHAR cwd[MAX_PATH];
	WCHAR wcwd[MAX_PATH];
	switch (msg)
	{
		case BFFM_INITIALIZED:
			if (GetCurrentDirectory(MAX_PATH, cwd))
			{
#ifdef UNICODE
				memcpy(wcwd, cwd, sizeof(TCHAR) * MAX_PATH);
#else
				MultiByteToWideChar(CP_ACP, 0, cwd, -1, wcwd, MAX_PATH);
#endif
				SendMessage(hwnd, BFFM_SETEXPANDED, TRUE, (LPARAM)wcwd);
				SendMessage(hwnd, BFFM_SETSELECTION, TRUE, (LPARAM)wcwd);
			}
	}
	return 0;
}
#endif

bool system_alert_choose_scenario(char *chosen_dir)
{
#if defined(__WIN32__)
	BROWSEINFO bi = { 0 };
	TCHAR path[MAX_PATH];
	bi.lpszTitle = _T("Select a scenario to play:");
	bi.pszDisplayName = path;
	bi.lpfn = browse_callback_proc;
	bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE | 0x00000200; // no "New Folder" button
	LPITEMIDLIST pidl = SHBrowseForFolder(&bi);
	if (pidl)
	{
		SHGetPathFromIDList(pidl, path);
#ifdef UNICODE
		WideCharToMultiByte(CP_UTF8, 0, path, -1, chosen_dir, 256, NULL, NULL);
#else
		strncpy(chosen_dir, path, 255);
#endif
		LPMALLOC pMalloc = NULL;
		SHGetMalloc(&pMalloc);
		pMalloc->Free(pidl);
		pMalloc->Release();
		return true;
	}
#endif
	return false;
}
#endif

#ifdef __MACOSX__
extern void system_launch_url_in_browser(const char *url);
#else
void system_launch_url_in_browser(const char *url)
{
#if defined(__WII__)
	fprintf(stderr, "Unsupported : tried to open a browser with URL : %s\n", url);
#elif defined(__WIN32__)
	ShellExecute(NULL, "open", url, NULL, NULL, SW_SHOWNORMAL);
#else
	pid_t pid = fork();
	if (pid == 0)
	{
		execlp("sensible-browser", "sensible-browser", url, NULL);
		exit(0);  // in case exec fails
	}
	else if (pid > 0)
	{
		int childstatus;
		wait(&childstatus);
	}
#endif
}
#endif

const int MAX_ALERT_WIDTH = 320;

extern void update_game_window(void);

void alert_user(const char *message, short severity) 
{
  if (SDL_GetVideoSurface() == NULL) {
	  system_alert_user(message, severity);
  } else {
    dialog d;
    vertical_placer *placer = new vertical_placer;
    placer->dual_add(new w_title(severity == infoError ? "WARNING" : "ERROR"), d);
    placer->add(new w_spacer, true);
    
    // Wrap lines
    uint16 style;
    font_info *font = get_theme_font(MESSAGE_WIDGET, style);
    char *t = strdup(message);
    char *p = t;

    while (strlen(t)) {
      unsigned i = 0, last = 0;
      int width = 0;
      while (i < strlen(t) && width < MAX_ALERT_WIDTH) {
	width = text_width(t, i, font, style);
	if (t[i] == ' ')
	  last = i;
	i++;
      }
      if (i != strlen(t))
	t[last] = 0;
      placer->dual_add(new w_static_text(t), d);
      if (i != strlen(t))
	t += last + 1;
      else
	t += i;
    }
    free(p);
    placer->add(new w_spacer, true);
    w_button *button = new w_button(severity == infoError ? "OK" : "QUIT", dialog_ok, &d);
    placer->dual_add (button, d);
    d.set_widget_placer(placer);

    d.activate_widget(button);

    d.run();
    if (severity == infoError && top_dialog == NULL)
      update_game_window();
  }
  if (severity != infoError) exit(1);
}

void alert_user(short severity, short resid, short item, OSErr error)
{
  char str[256];
  getcstr(str, resid, item);
  char msg[300];
  sprintf(msg, "%s (error %d)", str, error);
  if (severity == infoError) {
    logError2("alert (ID=%hd): %s", error, str);
  } else if (severity == fatalError) {
    logFatal2("fatal alert (ID=%hd): %s", error, str);
  }
  alert_user(msg, severity);
}

bool alert_choose_scenario(char *chosen_dir)
{
	return system_alert_choose_scenario(chosen_dir);
}

void launch_url_in_browser(const char *url)
{
	fprintf(stderr, "System launch url: %s\n", url);
	system_launch_url_in_browser(url);
}


extern "C" void debugger(const char *message);

/*
 *  Jump into debugger (and return)
 */

void pause_debug(void)
{
        logNote("pause_debug called");
	fprintf(stderr, "pause\n");
}


/*
 *  Display message
 */

void vpause(const char *message)
{
        logWarning1("vpause: %s", message);
	fprintf(stderr, "vpause %s\n", message);
}


/*
 *  Jump into debugger (and don't return)
 */

void halt(void)
{
        logFatal("halt called");
	fprintf(stderr, "halt\n");
	abort();
}


/*
 *  Display message and halt
 */

extern void stop_recording();
extern void shutdown_application();

void vhalt(const char *message)
{
	stop_recording();
        logFatal1("vhalt: %s", message);
	GetCurrentLogger()->flush();
	shutdown_application();
	system_alert_user(message, fatalError);
	abort();
}


/*
 *  Assertion failed
 */

static char assert_text[256];

void _alephone_assert(const char *file, int32 line, const char *what)
{
	vhalt(csprintf(assert_text, "%s:%d: %s", file, line, what));
}

void _alephone_warn(const char *file, int32 line, const char *what)
{
	vpause(csprintf(assert_text, "%s:%d: %s", file, line, what));
}
