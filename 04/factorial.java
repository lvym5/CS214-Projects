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
