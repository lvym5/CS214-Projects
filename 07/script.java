Script started on 2024-02-28 13:44:56-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="150" LINES="69"]
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ cat readArray.java
/*
 * Array Processing Using Java
 * Name: Lily McAboy
 * Date: 2/27/2024
 * CS 214 Project 07
 */

import java.util.Scanner;

public class array {

	public static void printArray(double[] theArray, int itsSize){
		for(int i = 0; i < itsSize; i++){
			System.out.println(theArray[i]);
		}
	}

	public static double[] readArray(int itsSize){
		double[] theArray = new double[itsSize];
		Scanner keyboard = new Scanner(System.in);
		for(int i = 0; i < itsSize; i++){
			theArray[i] = keyboard.nextDouble();
		}
		return theArray;
	}


	public static void main(String[] args){
		System.out.println("If you would like to put values in the array, please specify a size: ");
		Scanner keyboard = new Scanner(System.in);

		int arraySize = keyboard.nextInt();

		System.out.println("And please start typing in your desired values in this array: ");

		double[] arrayNumbers = readArray(arraySize);

		System.out.println("Here are the values of your array: ");
		printArray(arrayNumbers, arraySize);

	}
}
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ java readArray.java
If you would like to put values in the array, please specify a size: 
4
And please start typing in your desired values in this array: 
1
2
3
4
Here are the values of your array: 
1.0
2.0
3.0
4.0
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ exit

Script done on 2024-02-28 13:45:25-05:00 [COMMAND_EXIT_CODE="0"]
