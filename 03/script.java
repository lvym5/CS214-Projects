Script started on 2024-02-02 14:45:45-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="122" LINES="47"]
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.h java
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
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
100

Your grade is: A
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
45

Your grade is: F
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
66

Your grade is: D
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
89

Your grade is: B
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
900

Your grade is: F
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ java letter_grades.java

Enter your grade: 
92

Your grade is: A
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ exit
exit

Script done on 2024-02-02 14:46:42-05:00 [COMMAND_EXIT_CODE="0"]
