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

