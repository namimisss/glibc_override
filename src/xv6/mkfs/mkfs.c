#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>


#define stat xv6_stat
#include "kernel/types.h"
#include "kernel/fs.h"
#include "kernel/stat.h"
#include "kernel/param.h"

#ifndef static_assert
#define static_assert(a, b) do { switch (0) case 0: case (a): ; } while (0)
#endif

#define MINODES 200

int main(int argc, char* argv[])
{
    int i, cc, fd;
    uint rootino, inum, off;
    struct dirent de;
    return 0;
}