/*
 * Aggregate Operations; Examples with Name operations
 * Name: Lily McAboy
 * Date: 3/15/2024
 */

 import java.util.Scanner;

 public class NameTester
 {
    public static void main(String[] args)
    {
        Name aName = new Name("Lily", "Violet", "McAboy");

        assert aName.getFirst().equals("Lily");
        assert aName.getMiddle().equals("Violet");
        assert aName.getLast().equals("McAboy");

        System.out.println(aName);
        assert aName.toString().equals("Lily Violet McAboy");
        assert aName.lfmi().equals("McAboy, Lily, V.");
        aName.setFirst("Kenneth");
        aName.setMiddle("Munro");
        aName.setLast("Howes");

        assert aName.toString().equals("Kenneth Munro Howes");
        assert aName.getFirst().equals("Kenneth");
        assert aName.getMiddle().equals("Munro");
        assert aName.getLast().equals("Howes");

        System.out.println("All tests passed!");
    }
 }

 class Name
 {
    private String myFirst, myMiddle, myLast;

    public Name(String first, String middle, String last)
    {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }

    public String getFirst()
    {
        return myFirst;
    }

    public String getMiddle()
    {
        return myMiddle;
    }

    public String getLast()
    {
        return myLast;
    }

    public String toString()
    {
        return myFirst + " " + myMiddle + " " + myLast;
    }

    public void print()
    {
        System.out.println( toString());
    }

    public void setFirst(String aFirst)
    {
        myFirst = aFirst;
    }

    public void setMiddle(String aMiddle)
    {
        myMiddle = aMiddle;
    }

    public void setLast(String aLast)
    {
        myLast = aLast;
    }

    public String lfmi()
    {
        return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";
    }

    public void read()
    {
        Scanner scanner = new Scanner(System.in);
        myFirst = scanner.nextLine();
        myMiddle = scanner.nextLine();
        myLast = scanner.nextLine();
    }
 }
