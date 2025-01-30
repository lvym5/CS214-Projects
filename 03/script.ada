Script started on 2024-02-05 14:17:37-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="111" LINES="44"]
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ cat letter_grades.adb
-- letter_grades calculates what letter grade a score is based on an integer input from the user
-- Name: Lily McAboy
-- Date: 2/5/2024
-- CS 214 Project 03
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

	grade : Integer;

	function letterGrade(usr_grade : Integer) return String is
		actual_grade : Integer := usr_grade/10;
	begin 
		case actual_grade is
			when 10 | 9 => return "A";
			when 8 => return "B";
			when 7 => return "C";
			when 6 => return "D";
			when others => return "F";
		end case;
	end letterGrade;

begin
	Put("Enter your grade: ");           -- Prompt for input
	Get(grade);                   -- Input
	Put(letterGrade(grade) );                       -- Convert and output
	New_Line;
end letter_grades;

]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ gnatmake letter_grades.adb      
x86_64-linux-gnu-gcc-7 -c letter_grades.adb
x86_64-linux-gnu-gnatbind-7 -x letter_grades.ali
x86_64-linux-gnu-gnatlink-7 letter_grades.ali
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 100
A
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 98
A
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 87
B
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 76
C
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 62
D
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 55
F
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ ./letter_grades 
Enter your grade: 29
F
]0;lvm5@maroon07: ~/214/projects/03[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/03[00m$ exit
exit

Script done on 2024-02-05 14:18:25-05:00 [COMMAND_EXIT_CODE="0"]
