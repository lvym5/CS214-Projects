Script started on 2024-02-09 14:32:53-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="150" LINES="70"]
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ cat factorial.java
/*
 * Name: Lily McAboy
 * Date: 2/14/2024
 * CS 214 Project 04
 */

import java.util.Scanner;               // Get input

public class factorial{
	public static int factorial(int number){
		int fact = number; //initialize the "base" as the user's number
		for(int i = number - 1; i > 0; i--){ //for loop starts at number - 1, and goes until it reaches 1, decrementing and then multiplying as it goes. 
			fact *= i;
		}
		return fact; //return the factorial
	}
	public static void main(String[] args){
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Enter a number to find the factorial: ");
		int num = keyboard.nextInt(); //initialize an input integer
		System.out.print("\nThe factorial of ");
		System.out.print(num);
		System.out.print(" is ");
		System.out.print(factorial(num));
		System.out.println("");
	}
}
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ cat     java factorial.java
Enter a number to find the factorial: 
5

The factorial of 5 is 120
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ java factorial.java
Enter a number to find the factorial: 
7

The factorial of 7 is 5040
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ java factorial.java
Enter a number to find the factorial: 
3

The factorial of 3 is 6
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ exit
exit

Script done on 2024-02-09 14:33:27-05:00 [COMMAND_EXIT_CODE="0"]
