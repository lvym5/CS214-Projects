Script started on 2024-04-05 14:41:55-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="119" LINES="68"]
]0;lvm5@maroon07: ~/214/projects/09/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/java[00m$ cat Temperature.java
/* Implementing the Temperature class
 * Name: Lily McAboy
 * Date: 03/27/2024
 */

import java.util.Scanner;

class Temperature {
	public Temperature() {
		degrees = 0;
		scale = 'f';
	}

	public Temperature(double initialDeg, char initialScale) throws Exception {
			degrees = initialDeg;
			scale = initialScale;
		}

	public double getDegrees(){
		return degrees;
	}

	public char getScale(){
		return scale;
	}

	public double toFahren(){
		switch(scale){
			case('C'):
			case('c'):
				return (degrees * (9.0/5.0)) + 32.0;
			case('K'):
			case('k'):
				return (degrees - 273.15) * (9.0/5.0) + 32.0;
			default:
				return degrees;
		}
	}

	public double toCelsius(){
		switch(scale){
			case('F'):
			case('f'):
				return (degrees - 32.0) * (5.0/9.0);
			case('K'):
			case('k'):
				return degrees - 273.15;
			default:
				return degrees;
		}
	}

	public double toKelvin(){
		switch(scale) {
			case('F'):
			case('f'):
				return ((degrees - 32.0) * (5.0 / 9.0) + 273.15);
			case('C'):
			case('c'):
				return degrees + 273.15;
			default:
				return degrees; // if kelvin
		}
	}

	public void raise(double Raise){
		degrees += Raise;
	}

	public void lower(double Lower){
		degrees -= Lower;
	}

	public boolean equal(Temperature newTemp){
		return toFahren() == newTemp.toFahren();
	}

	public boolean lessThan(Temperature newTemp){
		return toFahren() < newTemp.toFahren();

	}

	public void read(Scanner in) throws Exception {
		String temp = in.nextLine();
		char c = Character.toLowerCase(temp.charAt(temp.length() - 1)); 
		double deg = Double.parseDouble(temp.substring(0, temp.length() - 1)); 
	}

	public void write() {
		System.out.println(String.format("%f %c", degrees, scale));
	}

	private double degrees;
	private char scale;


}
	
]0;lvm5@maroon07: ~/214/projects/09/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/java[00m$ cat TempDriver.java 
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
]0;lvm5@maroon07: ~/214/projects/09/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/java[00m$ javac -deprecation Temperature.java
]0;lvm5@maroon07: ~/214/projects/09/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/java[00m$ javac -depreation     cation TEmp   empDriver.java
TempDriver.java:15: error: cannot find symbol
            base.read(keyboard);
                      ^
  symbol:   variable keyboard
  location: class Temperature
TempDriver.java:26: error: cannot find symbol
            limit.read(keyboard);
                       ^
  symbol:   variable keyboard
  location: class Temperature
TempDriver.java:35: error: cannot find symbol
        double step = keyboard.nextDouble();
                      ^
  symbol:   variable keyboard
  location: class Temperature
TempDriver.java:37: error: cannot find symbol
        while(base.lessThan(limit)) {
                  ^
  symbol:   method lessThan(Temperature)
  location: variable base of type Temperature
TempDriver.java:38: error: cannot find symbol
            System.out.printf("\nF: %f\n", base.toFahren());
                                               ^
  symbol:   method toFahren()
  location: variable base of type Temperature
TempDriver.java:39: error: cannot find symbol
            System.out.printf("C: %f\n", base.toCelsius());
                                             ^
  symbol:   method toCelsius()
  location: variable base of type Temperature
TempDriver.java:40: error: cannot find symbol
            System.out.printf("D: %f\n\n", base.toKelvin());
                                               ^
  symbol:   method toKelvin()
  location: variable base of type Temperature
TempDriver.java:41: error: cannot find symbol
            base.raise(step);
                ^
  symbol:   method raise(double)
  location: variable base of type Temperature
8 errors
]0;lvm5@maroon07: ~/214/projects/09/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/java[00m$ exit

Script done on 2024-04-05 14:42:27-04:00 [COMMAND_EXIT_CODE="1"]
