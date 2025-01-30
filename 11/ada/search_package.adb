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
