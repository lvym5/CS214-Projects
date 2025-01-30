Script started on 2024-01-20 11:31:27-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="136" LINES="67"]
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ vim CircleArea.javagedit lab01-resultscd  /home/cs/214/current/lvm5[10Pgedit lab01-resultsvim CircleArea.java[Kjavac -deprecation RectangleArea.java
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ java Rectangle A  Area


To compute the area of a rectangle,
 enter its height: 2
 and enter its width: 3

The area is 6.0
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ cat RectangleArea.java
 /*RectangleArea.java computes the area of a rectangle 
 *
 * Input: The height and width of a rectangle.
 * Precondition: The height and width is a positive number.
 * Output: The area of the Rectamgle.
 * Completed by: Lily McAboy
 * Date:1/20/2024
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea{

     /* function rectangleArea() computes a circle's area, given its radius.
      * Parameter: width w and height h, both positive double numbers */

     public static double rectangleArea(double w, double h) {
        return w*h;               // return an expression
     } // RectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its height: ");

      Scanner keyboard = new Scanner(System.in);

      //get height from the user 
      double height = keyboard.nextDouble();

      //ask for width
      System.out.print(" and enter its width: ");

      //Get the width from the user
      double width = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + rectangleArea(height, width)); 
  } // main method

} // class CircleArea
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ cat RectangleArea.java[4Pjava RectangleArea


To compute the area of a rectangle,
 enter its height: 4
 and enter its width: 4

The area is 16.0
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its height: 8
 and enter its width: 17

The area is 136.0
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ exit
exit

Script done on 2024-01-20 11:32:40-05:00 [COMMAND_EXIT_CODE="0"]
