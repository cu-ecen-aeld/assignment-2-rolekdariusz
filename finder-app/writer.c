#include <stdio.h>
#include <syslog.h>
#include <string.h>

#define MAX_STR_LEN (60U)

int main(int argc , char *argv[])
{
    FILE* fptr = NULL;
    char writefile[MAX_STR_LEN] = { '\0' };
    char writestr[MAX_STR_LEN] = { '\0' };

    openlog(NULL, 0, LOG_USER);

    if(argc != 3)
    {
        syslog(LOG_ERR, "Incorrect number of arguments, expected 2.");
        return 1;
    }
    strncpy(writefile, argv[1], MAX_STR_LEN);
    strncpy(writestr, argv[2], MAX_STR_LEN);


    fptr = fopen(writefile, "w");
    if(fptr == NULL)
    {
        syslog(LOG_ERR, "File open fail. Filename: %s\n", writefile);
        return 1;
    }

    fputs(writestr, fptr);

    fclose(fptr);
    return 0;
}
