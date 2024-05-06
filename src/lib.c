#include <stdio.h>
#include <ctype.h>

char* capitalizeString(char* str) {
    int i = 0;
    while (str[i]) {
        str[i] = toupper(str[i]);
        i++;
    }
    return str;
}
