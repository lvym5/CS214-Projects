Script started on 2024-02-23 14:39:41-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="159" LINES="42"]
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ cat sc  root/.  .adb
------------------------------------------------------
--Creating roots of the quadratic equation given a, b, and c in Ada
--Name: Lily McAboy
--Date: 2/22/2024
--CS 214 Project 6
------------------------------------------------------
with Ada.Text_IO, Ada.Numerics.Elementary_Functions, Ada.Strings.Fixed, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Numerics.Elementary_Functions, Ada.Strings.Fixed, Ada.Float_Text_IO;

procedure root is
	a, b, c, discr, root1, root2 : Float;

	procedure root(a: in Float; b: in Float; c: in Float; root1 : out Float; root2: out Float) is
	begin 
		if a = 0.0 then
			Put("a should be positive.");
		else
			discr := ((b ** 2.0) - (4.0 * a * c));
			root1 := (-b + (sqrt(discr))/(2.0 * a));
			root2 := (-b - (sqrt(discr))/(2.0 * a));
		end if; 
	end root;

begin
	Put("Please enter your a, b, and c: ");
	Get(a);
	Get(b);
	Get(c);
	root(a, b, c, root1, root2);

	Put("Root1: ");
	Put(root1, 1, 15, 0);
	New_Line;
	Put("Root 2: ");
	Put(root2, 1, 15, 0);

end root;
		
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ gnatmake root.adb
gnatmake: "root" up to date.
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ ./root
Please enter your a, b, and c: 2 10 1
Root1: -7.602084159851074
Root 2: -12.397915840148926
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ ./root
Please enter your a, b, and c: -1 6 4
Root1: -9.605550765991211
Root 2: -2.394448757171631
]0;lvm5@gold27: ~/214/projects/06[01;32mlvm5@gold27[00m:[01;34m~/214/projects/06[00m$ exit

Script done on 2024-02-23 14:41:24-05:00 [COMMAND_EXIT_CODE="0"]
