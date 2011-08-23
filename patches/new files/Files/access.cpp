#include <unistd.h>
#include <stdio.h>
#include <SDL.h>


bool checkMode(const char *path, int amode);

// Basic, almost-dummy implementation, not complying with specifications.
int access(const char *path, int amode) {
    if (((amode & R_OK) != 0) && !checkMode(path, R_OK)) {
        return -1;
    }
    if (((amode & W_OK) != 0) && !checkMode(path, W_OK)) {
        return -1;
    }
    
    return 0;
}

bool checkMode(const char *path, int amode) {
	SDL_RWops* file = NULL;
	switch (amode) {
		case R_OK:
			file = SDL_RWFromFile(path, "rb");
		break;
		case W_OK:
			file = SDL_RWFromFile(path, "r+b");
		break;
		default:
			printf("Unsupported mode : %d -> ", amode);
		break;
	}
	
    if (file == NULL) {
		printf("File '%s' cannot be opened with mode : %d (error : %s)\n", path, amode, SDL_GetError());
        return false;
    } else {
		SDL_RWclose(file);
		return true;
	}
}
