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
