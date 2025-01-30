/* letter_grades is a driver for function letter_grades().
 *
 * Name: Lily McAboy
 * Date: 2/5/2024
 * CS 214 Project 03
 ****************************************************************/

import java.util.Scanner;

public class letterGrade {

	public static char letterGrade(int percent)
	{
		int avg = percent / 10;

		switch(avg)
		{
			case 10: case 9 :
				return 'A';
			case 8:
				return 'B';
			case 7:
				return 'C';
			case 6:
				return 'D';
			default:
				return 'F';
		}
	}

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your grade: "); // prompt

      int letter = keyboard.nextInt();      // read

      System.out.println("\nYour grade is: " + letterGrade(letter)); // display its code
   }                      
}   
