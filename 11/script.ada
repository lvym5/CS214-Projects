Script started on 2024-04-15 13:42:20-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="160" LINES="46"]
]0;lvm5@maroon07: ~/214/projects/11/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/ada[00m$ cat search.adb search_package.ads search_package.adb
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

-- search_package.ads declares an Ada linked list and its operations.
--
-- Name: Lily McAboy
-- Date: 4/15/2024
------------------------------------------------------------------

package search_package is

	-- the list-type itself (public)
	type List is private;

	-----------------------------------------------------
	-- Initialize a list                                -
	-- Receive: aList, a List.                          -
	-- Pre: aList is uninitialized.                     -
	-- Post: aList%itsFirst == aList%itsLast == NULL && -
	--        aList%itsLength == 0.                     -
	-----------------------------------------------------
	procedure Init(A_List: out List);


	------------------------------------------------
	-- Is a list empty?                            -
	-- Receive: aList, a List.                     -
	-- Return: true, iff aList contains no values. -
	------------------------------------------------
	function Empty(A_List: in List) return Boolean;

	-------------------------------------
	-- How many values are in a list?   -
	-- Receive: aList, a List.          -
	-- Return: aList%itsLength.         -
	-------------------------------------
	function Length(A_List : in List) return Integer;


	----------------------------------------
	-- Append a value to a list.           -
	-- Receive: aValue, an integer,        -
	-- Passback: aList, containing aValue. -
	----------------------------------------
	procedure Append(A_Value : in Integer; A_List: in out List);


	-------------------------------------
	-- Display the values in a list.    -
	-- Receive: aList, a List.          -
	-- Output: the values in aList.     -
	-------------------------------------

	-- replace this line with the declaration of Put()
	procedure Put(A_List : in List);
	---------------------------------------
	-- Search and traverse a list.  -
	-- Receive: aList, a List, and val            -
	-- Return: the index of found val.-
	---------------------------------------

        function searchFor(A_List : in List; myValue : in Integer) return Integer;

	private
	-- replace this line with a forward-dec of List_Node
	type List_Node;
	-- replace this line with a dec of Node_Ptr
	type Node_Ptr is access List_Node;
	-- replace this line with a full dec of List_Node
	type List_Node is
		record
			Its_Value : Integer;
			Its_Next : Node_Ptr;
		end record;
	-- replace this line with a full dec of List
	type List is
		record
			Its_First : Node_Ptr;
			Its_Last : Node_Ptr;
			Its_Length : Integer;
		end record;

end search_package;

-- search_package.adb defines Ada's linked list operations and traversing the list
--
-- Name: Lily McAboy
-- Date: 4/15/2024
--

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body search_package is

        -----------------------------------------------------
        -- Initialize a list                                -
        -- Receive: aList, a List.                          -
        -- Pre: aList is uninitialized.                     -
        -- Post: aList%itsFirst == aList%itsLast == NULL && -
        --        aList%itsLength == 0.                     -
        -----------------------------------------------------
        procedure Init(A_List : out List) is
        begin
                A_List.Its_First := null;
                A_List.Its_Last := null;
                A_List.Its_Length := 0;
        end Init;

        ------------------------------------------------
        -- Is a list empty?                            -
        -- Receive: aList, a List.                     -
        -- Return: true, iff aList contains no values. -
        ------------------------------------------------
        function Empty(A_List : in List) return Boolean is
        begin
                return A_List.Its_Length = 0;
        end Empty;

        -------------------------------------
        -- How many values are in a list?   -
        -- Receive: aList, a List.          -
        -- Return: aList%itsLength.         -
        -------------------------------------
        function Length(A_List : in List) return Integer is
        begin
                return A_List.Its_Length;
        end Length;

        ----------------------------------------
        -- Append a value to a list.           -
        -- Receive: aValue, an integer,        -
        -- Passback: aList, containing aValue. -
        ----------------------------------------
        procedure Append(A_Value : in Integer; A_List : in out List) is
                Temp_Ptr : constant Node_Ptr := new List_Node;
        begin
                Temp_Ptr.Its_Value := A_Value;
                Temp_Ptr.Its_Next := null;

                if A_List.Its_Length = 0 then
                        A_List.Its_First := Temp_Ptr;
                else
                        A_List.Its_Last.Its_Next := Temp_Ptr;
                end if;

                A_List.Its_Last := Temp_Ptr;

                A_List.Its_Length := A_List.Its_Length + 1;
        end Append;

        -------------------------------------
        -- Display the values in a list.    -
        -- Receive: aList, a List.          -
        -- Output: the values in aList.     -
        -------------------------------------

        -- replace this line with the definition of Put()

        procedure Put(A_List : in List) is
        Temp_Ptr : Node_Ptr := A_List.Its_First;
        begin
                while Temp_Ptr /= null loop
                        Put(' '); Put(Temp_Ptr.Its_Value);
                        Temp_Ptr := Temp_Ptr.Its_Next;
                end loop;
        end Put;


	------------------------------------
	--Traverse through the list to find -
	--a desired number. 
	--Receive: a list, and a findValue
	--Output: index of findValue in a list-
	--unless not found, rtrn -1 -
	-----------------------------------
	
	function searchFor(A_List : in List; myValue : in Integer) return Integer is
		Temp_Ptr : Node_Ptr := A_List.Its_First;
		myIndex : Integer := 0;
	begin
		while Temp_Ptr /= null loop
			if Temp_Ptr.Its_Value = myValue then
				return myIndex;
			end if;
			Temp_Ptr := Temp_Ptr.Its_Next;
			myIndex := myIndex + 1;
		end loop;
		return -1;
	end searchFor;


end search_package;
]0;lvm5@maroon07: ~/214/projects/11/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/ada[00m$ gnatmake search.adb
gnatmake: "search" up to date.
]0;lvm5@maroon07: ~/214/projects/11/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/ada[00m$ ./search
          99          88          77          66          55
          55          66          77          88          99
          55          77          99          88          66
          55          66          77          88
If -1 is returned, the number is not found n the list.
In list1, 99 is found at index:           0
In list2, 99 is found at index:           4
In list3, 99 is found at index:           2
In list4, 99 is found at index:          -1
]0;lvm5@maroon07: ~/214/projects/11/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/ada[00m$ exit

Script done on 2024-04-15 13:42:45-04:00 [COMMAND_EXIT_CODE="0"]
