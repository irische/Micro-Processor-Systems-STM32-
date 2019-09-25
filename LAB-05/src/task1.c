///*
//
// * task1.c
// *
// *  Created on: Nov 12, 2018
// *      Author: Qianqian
// */
//
////------------------------------------------------------------------------------------
//// Includes
////------------------------------------------------------------------------------------
//#include "hello.h"
//#include<stdint.h>
//#include <ctype.h>
//
////------------------------------------------------------------------------------------
//// MAIN Routine
////------------------------------------------------------------------------------------
//int main(void)
//{
//    Sys_Init(); // This always goes at the top of main (defined in init.c)
//
//    char choice;
//    int arg;
//    char print[13];//Create an array to store non-printable characters
//    char print2[13];
//
//    int i=0;
//
//
//    printf("\033[0;44;33m");//yellow characters on a blue background
//    printf("\033[2J\033[;H");// Erase screen & move cursor to home position
//    fflush(stdout);// Need to flush stdout after using printf that doesn't end in \n
//    printf("\n                         PRESS <ESC> OR <CTR>+[ TO QUIT\r\n");
//
//    while(1)
//    {
//		choice = getchar();//get a character
//		arg = (int)choice;//use arg to store digital number for the character
//
//		if(choice==27){//if press Esc
//			printf("\033[2J\033[;H"); // Erase screen & move cursor to home position
//			fflush(stdout);// Need to flush stdout after using printf that doesn't end in \n
//			return 1;
//		}
//		else if(isprint(arg)){//if character is printable
//			printf("\033[6;H");//move cursor to line 6
//			printf("\033[2K");//Erases the entire current row.
//			fflush(stdout);
//			printf("The keyboard character is \033[31m%c\033[33m\r\n", choice);//display character in red
//		}
//		else{
//			if(i<=12){//if numbers of non-printable character is under 12
//				printf("\007");//Beep
//				fflush(stdout);
//				print[i]=choice;//add to array
//				printf("\033[12;H");//move to line 12
//				printf("\033[2K");//Erases the entire current row.
//				fflush(stdout);
//				for (int k=0; k<=i; k++){//print all the non-printable characters
//					printf("The keyboard character $%02X is\033[4m'not printable'\033[0;33;44m \r",print[k]);
//					printf("\033[1B");//Moves the cursor down 1 row
//					fflush(stdout);
//				}
//			}
//			else if(i>12){//if the number of non-printable characters is larger than 12
//				printf("\007");//Beep
//				fflush(stdout);
//				for (int t=0; t<=11; t++)//copy the array to print2 and move up one row
//					print2[t]=print[t+1];
//				for (int t=0; t<=11; t++)
//					print[t]=print2[t];
//				print[12]=choice;//save the new character
//				printf("\033[12;H");//move to line 12
//				printf("\033[2K");//Erases the entire current row.
//				fflush(stdout);
//				for (int k=0; k<=12; k++){
//					printf("The keyboard character $%02X is\033[4m'not printable'\033[0;33;44m\r",print[k]);
//					printf("\033[1B");//Moves the cursor down 1 row
//					fflush(stdout);
//				}
//
//			}
//			i=i+1;
//		}
//    }
//}
//
////------------------------------------------------------------------------------------
//
