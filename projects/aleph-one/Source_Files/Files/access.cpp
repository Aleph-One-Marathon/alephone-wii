#include <unistd.h>
#include <cerrno>
#include <cstdio>
#include <cstring>
#include <dirent.h>


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
	FILE* file = NULL;
	switch (amode) {
		case R_OK:
			file = fopen(path, "rb");
		break;
		case W_OK:
			file = fopen(path, "r+b");
		break;
		default:
			fprintf(stderr, "Unsupported mode : %d -> ", amode);
		break;
	}
	
    if (file == NULL) {
        DIR* dir = opendir(path);
        if (dir == NULL) {
    		fprintf(stderr, "File '%s' cannot be opened with mode : %d (error : %d[%s])\n", path, amode, errno, strerror(errno));
            return false;
        }
        closedir(dir);
	}
	
	fclose(file);
	return true;
}
