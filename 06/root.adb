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
		
