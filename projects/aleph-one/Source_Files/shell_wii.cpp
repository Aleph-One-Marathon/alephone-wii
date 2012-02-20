#include "cseries.h"
#include "shell_wii.h"
#include "interface.h"
#include "interface_menus.h"
#include "sdl_dialogs.h"
#include "sdl_widgets.h"

#include </opt/devkitpro/libogc/include/network.h>
#include <SDL_rwops.h>
#include <joystick.h>


namespace wii {

int init_subsystems(void) {
    int err;

    if ((err = init_fat()) != 0) {
		printf("File system not available. Cannot launch the game without it.\n");
        return err;
    }

    if ((err = init_network()) != 0) {
        printf("Network not available.\n");
    }

    return 0;
}

int init_fat(void) {
    fprintf(stdout, "Forcing fat initialization by trying to open a dummy file using SDL...\n");
    SDL_RWops* fileContext = SDL_RWFromFile("dummy.file", "r");
    if (fileContext != NULL) {
        return SDL_RWclose(fileContext);
    }

    return 0;
}

int init_network(void) {
	const int maxTryCount = 5;
	int result = -EAGAIN;
	fprintf(stdout, "Initializing network...\n");
	for (int i = 1; (i <= maxTryCount) && (result == -EAGAIN); i++) {
		result = net_init();
		if (result < 0) {
			fprintf(stderr, "Unable to init network (try %d/%d) : %d\n", i, maxTryCount, result);
		} else {
			fprintf(stdout, "Network initialized\n", i, maxTryCount, result);
		}
	}

	if (result >= 0) {
		char ip[16];
		result = if_config(ip, NULL, NULL, true);
		if (result < 0) {
			fprintf(stderr, "Unable to get network's configuration.\n");
		} else {
			fprintf(stdout, "Network ip : %.16s\n", ip);
		}
	}

	return result;
}

void init_wiimote(int16 wiimote_id) {
	enter_joystick(wiimote_id);
	lock_joystick();
}

bool is_home_button(Uint8 button_id) {
	return (button_id == SDL_WPAD_BUTTON_HOME)
		|| (button_id == SDL_WPAD_CLASSIC_BUTTON_HOME);
}

void process_joystick_keys(SDL_Event event) {
	if (event.jbutton.state == SDL_PRESSED) {
		switch (get_game_state()) {
			case _game_in_progress:
				if (wii::is_home_button(event.jbutton.button))
					do_menu_item_command(mGame, iQuitGame, false);
				break;
			case _display_main_menu:
				if (wii::is_home_button(event.jbutton.button))
					do_menu_item_command(mInterface, iQuit, false);
				break;
		}
	}
}

bool confirm_quit(void) {
	dialog d;
	vertical_placer *placer = new vertical_placer;
	placer->dual_add (new w_static_text("Are you sure you wish to"), d);
	placer->dual_add (new w_static_text("quit the game?"), d);
	placer->add (new w_spacer(), true);
	
	horizontal_placer *button_placer = new horizontal_placer;
	w_button *default_button = new w_button("YES", dialog_ok, &d);
	button_placer->dual_add (default_button, d);
	button_placer->dual_add (new w_button("NO", dialog_cancel, &d), d);
	d.activate_widget(default_button);
	placer->add(button_placer, true);
	d.set_widget_placer(placer);
	return d.run() == 0;
}

}
