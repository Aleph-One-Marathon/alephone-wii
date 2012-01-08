#ifndef __SHELL_WII_H
#define __SHELL_WII_H


namespace wii {

static const int SDL_WPAD_BUTTON_HOME = 6;
static const int SDL_WPAD_CLASSIC_BUTTON_HOME = 19;

int init_subsystems(void);
int init_fat(void);
int init_network(void);

void init_wiimote(int16 wiimote_id);

bool is_home_button(Uint8 button_id);
void process_joystick_keys(SDL_Event event);
bool confirm_quit(void);

}

#endif
