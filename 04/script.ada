Script started on 2024-02-09 15:16:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="209" LINES="69"]
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ cat factorial/ .adb
-------------------------------------------------------
----- Name: Lily McAboy
----- Date: 2/14/2024
----- CS 214 Project 04

--------------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
procedure factorial is

	user_num : Integer;
	fact : Integer := 1;

begin                                           -- Prompt for input
	Put_Line("Enter your desired factorial number: ");
	Get(user_num);

	for i in 1 .. user_num loop
		fact := fact * i;
	end loop;

	Put("The factorial of ");
	Put(user_num , Width => 0);
	Put(" is ");
	Put(fact, Width => 0);


end factorial;

]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ c gnatmake factorial.adb
gnatmake: "factorial" up to date.
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ./factorial
Enter your desired factorial number: 
5
The factorial of 5 is 120
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ./factorial
Enter your desired factorial number: 
6
The factorial of 6 is 720
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ./factorial
Enter your desired factorial number: 
7
The factorial of 7 is 5040
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ ./factorial
Enter your desired factorial number: 
3
The factorial of 3 is 6
]0;lvm5@maroon07: ~/214/projects/04[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/04[00m$ exit
exit

Script done on 2024-02-09 15:16:59-05:00 [COMMAND_EXIT_CODE="0"]
