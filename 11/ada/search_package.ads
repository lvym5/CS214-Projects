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

