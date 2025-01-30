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

