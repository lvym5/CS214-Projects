/* A tester for the temperature class in java
* Name: Lily McAboy
* Date: March 27th, 2024
*/

import java.util.Scanner;

class Temperature {
    public static void main(String[] args) {
        Scanner keybaord = new Scanner(System.in);

        Temperature base = new Temperature();
        System.out.print("Enter your base temperature: ");
        try {
            base.read(keyboard);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            System.exit(-1);
        }

        Temperature limit = new Temperature();
        System.out.print("Enter your limit temperature: ");
        try {
            limit.read(keyboard);
        }
        catch(Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
            System.exit(-1);
        }

        System.out.print("Please enter a step value: ");
        double step = keyboard.nextDouble();

        while(base.lessThan(limit)) {
            System.out.printf("\nF: %f\n", base.toFahren());
            System.out.printf("C: %f\n", base.toCelsius());
            System.out.printf("D: %f\n\n", base.toKelvin());
            base.raise(step);
        }
    }
}
