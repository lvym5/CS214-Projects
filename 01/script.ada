Script started on 2024-01-20 11:51:18-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="136" LINES="67"]
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ c cat rectangle_area.adb
-- Finding the area of a rectangle using Ada
-- Input: the height and width of the rectangle
-- precondition: the numbers must be a positive number 
-- output: the area of a rectangle 
--
-- Completed by: Lily McAboy
-- Date: 1/20/2024
--

with Ada.Text_IO, Ada.Float_Text_IO; --include the float and text libraries
use Ada.Text_IO, Ada.Float_Text_IO; -- make the float and text libraries able to work 

procedure rectangle_area is --create our procedure
	height, width, area : float; --creating height, width, and area as a type float 
-- height and width must be positive numbers 

	function rectangle_area(height: in float; width: in float) return float is -- creating our function
	begin
		return height * width; --computing area
	end rectangle_area; 

begin 
	New_line;
	Put_Line("Compute the area of a rectangle by entering: ");
	Put("Enter the height: ");
	Get(height);
	Put("Enter the width: ");
	Get(width);

	area := rectangle_area(height, width); 

	New_Line;
	Put("The rectangle area is: ");
	Put(area, 1, 2, 0); --only let it have two decimal points at most

end rectangle_area;
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

Compute the area of a rectangle by entering: 
Enter the height: 2
Enter the width: 4

The rectangle area is: 8.00
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

Compute the area of a rectangle by entering: 
Enter the height: 3.5
Enter the width: 7.2

The rectangle area is: 25.20
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

Compute the area of a rectangle by entering: 
Enter the height: 6
Enter the width: 9

The rectangle area is: 54.00
]0;lvm5@maroon07: ~/214/projects/01[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/01[00m$ exit
exit

Script done on 2024-01-20 11:52:06-05:00 [COMMAND_EXIT_CODE="0"]
