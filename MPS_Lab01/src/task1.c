//------------------------------------------------------------------------------------
// Task1.c
//------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------------
#include "hello.h"
#include <stdio.h>
#include <stdlib.h>
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define RED "\x1b[31m"

//------------------------------------------------------------------------------------
// MAIN Routine
//------------------------------------------------------------------------------------
/*int main(void)
{
    Sys_Init(); // This always goes at the top of main (defined in init.c)
    char inval;
    printf("\033[2J\033[;H"); // Erase screen & move cursor to home position
    fflush(stdout); // Need to flush stdout after using printf that doesn't end in \n

    printf("\r                         PRESS <ESC> OR <CRL>+[ TO QUIT\n\r");
    while(1)
    {
    	inval = getchar();
        if (inval == 27){
        	printf("\033[2J\033[;H");
        	fflush(stdout);
        	return 1;
        }
        else{
            printf("The keyboard character is %c\n\r" ANSI_COLOR_YELLOW,inval);
            fflush(stdout);
            printf("\033[2;1H");
            printf("\033[2K");
        }
    }


}
*/
