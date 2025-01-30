Script started on 2024-03-15 14:33:46-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="90" LINES="40"]
]0;lvm5@maroon04: ~/214/projects/08[01;32mlvm5@maroon04[00m:[01;34m~/214/projects/08[00m$ cat Nametester.java
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
]0;lvm5@maroon04: ~/214/projects/08[01;32mlvm5@maroon04[00m:[01;34m~/214/projects/08[00m$ java NameT tester.java
Lily Violet McAboy
All tests passed!
]0;lvm5@maroon04: ~/214/projects/08[01;32mlvm5@maroon04[00m:[01;34m~/214/projects/08[00m$ exit

Script done on 2024-03-15 14:34:03-04:00 [COMMAND_EXIT_CODE="0"]
