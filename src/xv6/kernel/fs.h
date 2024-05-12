#ifndef _KERNEL_FS_H_
#define _KERNEL_FS_H_

#include <sys/types.h>



#define DIRSIZE 14
struct dirent{
    ushort inum;
    char name[DIRSIZE];
};

#endif

