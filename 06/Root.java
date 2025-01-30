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
