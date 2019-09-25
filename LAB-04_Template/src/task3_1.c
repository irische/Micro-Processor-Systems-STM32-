//#include "init.h"
//#include "uart.h"
//#include <stdint.h>
//#include "stm32f769xx.h"
//#include "stm32f7xx_hal_conf.h"
//
//
//int main(void){
//
//	Sys_Init();
//	printf("\033[2J\033[;H");// Erase screen & move cursor to home position
//	fflush(stdout);
//	uint32_t  var;
//
//	asm("LDR r1, =10"); // Load the value 0x000102FA into r3
//	asm("LDR r2, =20");//Load the value 20 into r1
//	asm("ADD r3, r1 , r2"); // Add r2 and r1, store into r3
//	asm("STR r3,%0" : "=m" (var));//store r3 to variable var
//	printf( "int1 + int2 = %ld\r\n",  var );
//
//	uint32_t  a,b,c;	//Constants used in the equation
//	a=10;
//	b=20;
//	c=0;
//	asm("MUL %[tmp3],%[tmp1],%[tmp2]"//Multiply a and b. And store the product in c
//			:[tmp3] "=r" (c)
//			:[tmp1] "r" (a) , [tmp2] "r" (b));
//
//	printf( "%ld * %ld = %ld\r\n", a,b,c );//print a*b=c
//
//	uint32_t  d,x,e,s,f,g,s2;
//	d=2;
//	f=3;
//	e=5;
//	s=0;//store first solution
//	x=5;
//	g=15;
//	s2=0;//store second solution
//
//	asm("MUL %[tmp3],%[tmp1],%[tmp2]"//Multiply x and d. And store the product in s
//			:[tmp3] "=r" (s)
//			:[tmp1] "r" (x) , [tmp2] "r" (d));
//	asm("SDIV %[tmp3],%[tmp1],%[tmp2]"//Divide s by f. And store the quotient in s
//			:[tmp3] "=r" (s)
//			:[tmp1] "r" (s) , [tmp2] "r" (f));
//	asm("ADD %[tmp3],%[tmp1],%[tmp2]"//Add s and e. And store the sum in s
//			:[tmp3] "=r" (s)
//			:[tmp1] "r" (s) , [tmp2] "r" (e));
//	printf( "2*x/3 +5 = %ld, x=%ld\r\n",s,x );//print 2*x/3 +5 =s
//
//	asm("MLA %[tmp1],%[tmp2],%[tmp3],%[tmp4]"//g=d*x+g
//			: [tmp1] "+r" (s2)
//			: [tmp4] "r" (g), [tmp2] "r" (d) , [tmp3] "r" (x));
//	asm("SDIV %[tmp3],%[tmp1],%[tmp2]"//s2=g/f
//			:[tmp3] "=r" (s2)
//			:[tmp1] "r" (s2) , [tmp2] "r" (f));
//	printf( "2*x/3 +5 = %ld, x=%ld\r\n",s2,x);//print 2*x/3 +5 = s2
//}
//
//
