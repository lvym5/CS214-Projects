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
