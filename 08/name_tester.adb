with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

	-- replace this line with the definition of NAME_SIZE
	NAME_SIZE : Integer := 8;
	-- replace this line with the definition of Name
	type Name is record myFirst, myMiddle, myLast : String(1..NAME_SIZE); end record;
	aName : Name ;
	--  aName : Name ;


	----------------------------------------------
	-- Init initializes a Name variable          -
	-- Receive: theName, the Name variable;      -
	--          First, the first name;           -
	--          Middle, the middle name;         -
	--          Last, the last name.             -
	-- Return: theName, its fields set to First, -
	--               Middle, and Last.           -
	----------------------------------------------

	-- replace this line with the definition of Init()
	procedure Init(TheName: out Name; First, Middle, Last : in String) is begin TheName.MyFirst := First; TheName.MyMiddle := Middle; TheName.MyLast := Last; end Init;

	----------------------------------------------
	-- getFirst(Name) retrieves Name.myFirst        -
	-- Receive: theName, a Name.                 -
	-- PRE: theName has been initialized.        -
	-- Return: theName.myFirst.                  -
	----------------------------------------------

	-- replace this line with the definition of getFirst()
	function getFirst(TheName : in Name) return String is begin return TheName.MyFirst; end getFirst;

	-- replace this line with the doc and def of getMiddle()
	function getMiddle(TheName : in Name) return String is begin return TheName.MyMiddle; end getMiddle;

	-- replace this line with the doc and def of getLast()
	function getLast(TheName : in Name) return String is begin return TheName.MyLast; end getLast;

	-----------------------------------------------
	-- getFullName(Name) retrieves Name as a String  -
	-- Receive: theName, a Name.                  -
	-- PRE: theName has been initialized.         -
	-- Return: a String representation of theName -
	-----------------------------------------------

	-- replace this line with the definition of getFullName()
	--function getFullName(TheName : in Name) return String is begin return TheName.MyFirst & TheName.MyMiddle & TheName.MyLast; end getFullName;
	function getFullName(TheName: in Name) return String is begin return TheName.myFirst & " " & TheName.MyMiddle & " " & TheName.MyLast; end getFullName;

	procedure setFirst(TheName : out Name; aFirst: in String) is begin
		TheName.MyFirst := aFirst;
	end setFirst;

	procedure setMiddle(TheName : out Name; aMiddle: in String) is begin
		TheName.MyMiddle := aMiddle;
	end setMiddle;

	procedure setLast(TheName : out Name; aLast: in String) is begin
		TheName.MyLast := aLast;
	end setLast;

	function lfmi(TheName : in Name) return String is begin
		return TheName.MyLast & ", " & TheName.MyFirst & " " & TheName.MyMiddle(1) & ".";
	end lfmi;

	procedure read(TheName : out Name) is begin
		Get(TheName.MyFirst);
		Get(TheName.MyMiddle);
		Get(TheName.MyLast);
	end read;


	----------------------------------------------
	-- Put(Name) displays a Name value.          -
	-- PRE: theName has been initialized.        -
	-- Receive: theName, a Name.                 -
	-- Output: theName, to the screen.           -
	----------------------------------------------

	--- replace this line with the definition of Put()

	procedure Put(TheName: in Name) is begin Put(getFullName(TheName)); end Put;

begin

	Init(aName, "Lily    ", "Violet  ", "McAboy  ");
	pragma Assert( getFirst(aName) = "Lily    ", "getFirst() failed");
	pragma Assert( getMiddle(aName) = "Violet  ", "getMiddle() failed");
	pragma Assert( getLast(aName) = "McAboy  ", "getLast() failed");
	pragma Assert( getFullName(aName) = "Lily     Violet  McAboy  ", "getFullName() failed");

	setFirst(aName, "Angelina");
	setMiddle(aName, "Isabella");
	setLast(aName, "Cressida");
	pragma Assert( lfmi(aName) = "Cressida, Angelina I.", "lfmi failed");

	Put(aName);
	New_Line;
	Put("All tests passed.");

end name_tester;


