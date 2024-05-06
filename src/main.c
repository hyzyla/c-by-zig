#include <stdio.h>
#include <stdbool.h>
#include "lib.h"

int main() {
    char input[100];
    printf("Enter a message: ");
    scanf("%s", input);

    char* capitalized = capitalizeString(input);
    
    printf("You entered: %s\n", input);
    printf("And it was capitalized: %s\n", capitalized);
    
    return 0;
}