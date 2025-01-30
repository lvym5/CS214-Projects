Script started on 2024-02-23 15:03:32-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="159" LINES="42"]
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ cat Root.java
/* Using subprograms in Java to get the roots of the quadatric equation
 * Name: Lily McAboy
 * Date: 2/29/2024
 * CS 214 Lab 06
 */

import java.util.Scanner;
import java.lang.Math;

public class Root
{
	public static void main(String[] args)
	{
		Scanner keyboard = new Scanner(System.in);
		System.out.println("\nGet the roots of a quadratic formula: ");
		System.out.println("\nEnter your a value: ");
		double a = keyboard.nextDouble();
		System.out.println("\nNow enter your b value: ");
		double b = keyboard.nextDouble();
		System.out.println("\nFinally, enter your c value: ");
		double c = keyboard.nextDouble();

		double [] results = new double[2];
		root(a,b,c, results);

		System.out.println("\nRoot 1: " + results[0] + "\nRoot 2: " + results[1]); 
	}

	public static void root(double a, double b, double c, double[] results)
	{
		double arg = (b * b) - (4 * a * c);
		results[0] = (-b + Math.sqrt(arg))/(2 * a);
		results[1] = (-b - Math.sqrt(arg))/(2 * a);
		if(a == 0){
			System.exit(0);
		}
	}
}
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ java Root.java

Get the roots of a quadratic formula: 

Enter your a value: 
2

Now enter your b value: 
9

Finally, enter your c value: 
1

Root 1: -0.1139990636706174
Root 2: -4.386000936329383
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ java Root.java

Get the roots of a quadratic formula: 

Enter your a value: 
8

Now enter your b value: 
6

Finally, enter your c value: 
3

Root 1: NaN
Root 2: NaN
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ exit

Script done on 2024-02-23 15:04:00-05:00 [COMMAND_EXIT_CODE="0"]
