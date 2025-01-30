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
