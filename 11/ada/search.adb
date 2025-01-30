-- search.adb searches through a list and returns the index if value is found. 
-- 
-- Name: Lily McAboy
-- Date: 4/15/2024
-------------------------------------------------- 

with Ada.Text_IO, Ada.Integer_Text_IO, search_package;
use Ada.Text_IO, Ada.Integer_Text_IO, search_package;

procedure search is
	-- define 3 lists 
	List1, List2, List3, List4 : List;

begin
	Init(List1);                -- initialize them 
	Init(List2);
	Init(List3);
	Init(List4);

	Append(99, List1);          -- 99, 88, 77, 66, 55 
	Append(88, List1);          -- max is first 
	Append(77, List1);
	Append(66, List1);
	Append(55, List1);

	Append(55, List2);          -- 55, 66, 77, 88, 99 
	Append(66, List2);          -- max is last 
	Append(77, List2);
	Append(88, List2);
	Append(99, List2);

	Append(55, List3);          -- 55, 77, 99, 88, 66 
	Append(77, List3);          -- max is in the middle 
	Append(99, List3);
	Append(88, List3);
	Append(66, List3);

	Append(55, List4);          -- 55, 66, 77, 88, 99 
	Append(66, List4);          -- 99 not found
	Append(77, List4);
	Append(88, List4);


	Put(List1); New_Line;       -- output the 3 lists 
	Put(List2); New_Line;
	Put(List3); New_Line;
	Put(List4); New_Line;

	-- traverse to find 99
	
	Put("If -1 is returned, the number is not found n the list."); New_Line;

	Put("In list1, 99 is found at index: "); Put( searchFor(List1, 99));
	New_Line;

	Put("In list2, 99 is found at index: "); Put( searchFor(List2, 99));
	New_Line;

	Put("In list3, 99 is found at index: "); Put( searchFor(List3, 99));
	New_Line;

	Put("In list4, 99 is found at index: "); Put( searchFor(List4, 99));
	New_Line;

end search;

