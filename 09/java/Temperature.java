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
	
