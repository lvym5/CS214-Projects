Script started on 2024-02-28 14:21:55-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="150" LINES="69"]
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ cat readingarray.adb
------------------------------------------------------------------
-- Reading and printing an array in Ada
-- Name: Lily McAboy
-- Date: 2/27/2024
-- CS 214 Project 07
--
-- --------------------------------------------------------------
--
--
--

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure readingArray is 

	type Vector is array(Positive range <>) of Float;

	mySize : Integer;

	myArray : Vector(1 .. mySize);

	procedure printArray(arr: Vector; mySize : in Integer) is
	begin 
		for I in 1 .. mySize
		loop
			Put(arr(I));
			New_Line;
		end loop; 
		return; 

	end printArray;


	procedure readArray(arr: Vector; mySize : in Integer) is
	begin 
		for I in 1 .. mySize
		loop 
			Get(myArray(I));
		end loop; 
		return;
	end readArray;

begin 

	Put("Enter the desired size of your array: ");
	Get(mySize);
	New_Line;
	Put("Start entering your desired float numbers into the array: ");
	New_Line;

	readArray(myArray, mySize);

	New_Line;

	Put("Here are the results of your array: ");
	New_Line;
	printArray(myArray, mySize);

end readingArray;
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ gnatmake readingarray.adb
gnatmake: "readingarray" up to date.
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ ./readingarray
Enter the desired size of your array: 4

Start entering your desired float numbers into the array: 
1.0
2.0
3.0
4.0

Here are the results of your array: 
 1.00000E+00
 2.00000E+00
 3.00000E+00
 4.00000E+00
]0;lvm5@maroon07: ~/214/projects/07[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/07[00m$ exit

Script done on 2024-02-28 14:22:24-05:00 [COMMAND_EXIT_CODE="0"]
