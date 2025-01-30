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
