/**
 * SO, 2016
 * Lab #12
 *
 * Task 01 - mini.c
 * Implementing a minimal comand line file utility
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/sysmacros.h>
#include <sys/mount.h>
#include <dirent.h>

#include "utils.h"

#define MAX_LINE_SIZE		256

const char *delim = " \t\n";
char *prompt = "so-lab12";

#define TODO2
#define TODO3
#define TODO4
#define TODO5
#define TODO6
#define TODO7

static int ls(const char *pathname)
{
	int ret;
	DIR *dir;
	struct dirent *entry;
	char subdir_path[MAX_LINE_SIZE << 1];

	dir = opendir(pathname);
	DIE(!dir, "opendir", return -1);

	while (1) {
		entry = readdir(dir);
		if (!entry)
			break;

		printf("%ld: %s\n", entry->d_ino, entry->d_name);

		if (entry->d_type == DT_DIR && strcmp(entry->d_name, ".") &&
			strcmp(entry->d_name, "..")) {
			snprintf(subdir_path, sizeof(subdir_path), "%s/%s",
				pathname, entry->d_name);

			printf(">>> %s\n", subdir_path);

			ret = ls(subdir_path);
			DIE(ret < 0, "ls", return -1);

			printf("<<< %s\n", subdir_path);
		}
	}

	return 0;
}

int main(void)
{
	char file_type;
	char line[MAX_LINE_SIZE];
	char real_path[MAX_LINE_SIZE];
	char *cmd, *arg1, *arg2, *arg3;
	int ret; /* to be used for function calls return code */
	struct stat statbuf;

	while (1) {
		printf("<%s>", prompt);
		fflush(stdout);

		memset(line, 0, MAX_LINE_SIZE);

		if (fgets(line, sizeof(line), stdin) == NULL)
			exit(EXIT_SUCCESS);

		cmd = strtok(line, delim);
		if (!cmd)
			continue;
#ifdef DEBUG
		printf("Executing command: %s\n", cmd);
#endif
		if (strncmp(cmd, "quit", 4) == 0)
			break;
#ifdef TODO2
		/* TODO2: implement list <device_node>
		 * Output: <c|b> <major>:<minor>
		 * e.g: list /dev/zero
		 * Output: /dev/zero: <c> 1:5
		 */
		if (strncmp(cmd, "list", 4) == 0) {
			arg1 = strtok(NULL, delim); /* device_node name */
			DIE(!arg1, "strtok 1", continue);

			arg2 = realpath(arg1, real_path);
			DIE(!arg2, "realpath", continue);

			ret = stat(real_path, &statbuf);
			DIE(ret < 0, "stat", continue);

			if (S_ISCHR(statbuf.st_mode))
				file_type = 'c';
			else if (S_ISBLK(statbuf.st_mode))
				file_type = 'b';
			else
				DIE(1, "statbuf.st_mode", continue);

			printf("%s: <%c> %d:%d\n",
				arg1, file_type, major(statbuf.st_rdev),
				minor(statbuf.st_rdev));

			continue;
		}
#endif

#ifdef TODO3
		/* TODO3: implement mount source target fs_type
		 * e.g: mount /dev/sda1 /mnt/disk2 ext3
		 */
		if (strncmp(cmd, "mount", 5) == 0) {
			arg1 = strtok(NULL, delim); /* source */
			DIE(!arg1, "strtok 1", continue);

			arg2 = strtok(NULL, delim); /* target */
			DIE(!arg2, "strtok 2", continue);

			arg3 = strtok(NULL, delim);/* fs_type (e.g: ext2) */
			DIE(!arg3, "strtok 3", continue);

			ret = mount(arg1, arg2, arg3, 0, NULL);
			DIE(ret < 0, "mount", ;);

			continue;
		} else if (strncmp(cmd, "umount", 6) == 0) {
			/* TODO3: implement umount */
			arg1 = strtok(NULL, delim); /* target */

			ret = umount(arg1);
			DIE(ret < 0, "umount", ;);

			continue;
		}
#endif

#ifdef TODO4
		/* TODO4: implement symlink oldpath newpath
		 * e.g: symlink a.txt b.txt
		 */
		if (strncmp(cmd, "symlink", 7) == 0) {
			arg1 = strtok(NULL, delim); /* oldpath */
			DIE(!arg1, "strtok 1", continue);

			arg2 = strtok(NULL, delim); /* newpath */
			DIE(!arg2, "strtok 2", continue);

			ret = symlink(arg1, arg2);
			DIE(ret < 0, "symlink", ;);

			continue;
		} else if (strncmp(cmd, "unlink", 6) == 0) {
			/* TODO4: implement unlink */
			arg1 = strtok(NULL, delim); /* pathname */
			DIE(!arg1, "strtok 1", continue);

			ret = unlink(arg1);
			DIE(ret < 0, "unlink", ;);

			continue;
		}
#endif

#ifdef TODO5
		/* TODO5: implement mkdir pathname mode
		 * e.g: mkdir food 0777
		 */
		if (strncmp(cmd, "mkdir", 5) == 0) {
			arg1 = strtok(NULL, delim); /* pathname */
			DIE(!arg1, "strtok 1", continue);

			ret = mkdir(arg1, 0755);
			DIE(ret < 0, "mkdir", ;);

			continue;
		} else if (strncmp(cmd, "rmdir", 5) == 0) {
			/* TODO5: implement rmdir pathname */
			arg1 = strtok(NULL, delim); /* pathname */
			DIE(!arg1, "strtok 1", continue);

			ret = rmdir(arg1);
			DIE(ret < 0, "rmdir", ;);

			continue;
		}
#endif

#ifdef TODO6
		/* TODO6: implement ls dirname
		 * e.g: ls ..
		 */
		if (strncmp(cmd, "ls", 2) == 0) {
			/* recursively print files starting with arg1 */
			arg1 = strtok(NULL, delim);
			DIE(!arg1, "strtok 1", continue);

			ret = ls(arg1);
			DIE(ret < 0, "ls", ;);

			continue;
		}
#endif

#ifdef TODO7
		if (strncmp(cmd, "chdir", 5) == 0) {
			/* TODO7: implement chdir <dir>
			 * e.g: chdir bar
			 */
			arg1 = strtok(NULL, delim); /* pathname */
			DIE(!arg1, "strtok", continue);

			ret = chdir(arg1);
			DIE(ret < 0, "chdir", continue);

			continue;
		} else if (strncmp(cmd, "pwd", 3) == 0) {
			/* TODO7: implement pwdir
			 * e.g: pwd
			 */
			/* print workding directory */
			memset(line, 0, sizeof(line));

			arg1 = getcwd(line, sizeof(line));
			DIE(!arg1, "getcwd", continue);

			printf("%s\n", line);

			continue;
		}
#endif
	}

	return 0;
}
