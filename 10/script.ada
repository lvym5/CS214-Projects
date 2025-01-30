Script started on 2024-04-11 20:29:59-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="94" LINES="32"]
]0;lvm5@remotel3: ~/214/projects/10/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ada[00m$ a cat *
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is

	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type whose My_Name = Name.       -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String) is
	begin
		A_Bird.My_Name := Name;
	end Init;
	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String is
	begin
		return A_Bird.My_Name;
	end Name;
	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------
	function Call(A_Bird : in Bird_Type) return String is
	begin
		return "Squawkkk!";
	end Call;
	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------
	--


	function Type_Name(A_Bird : in Bird_Type) return String is
	begin
		return "Bird";
	end Type_Name;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------

	procedure Put(A_Bird : in Bird_Type'Class) is
	begin
		Put( Name(A_Bird) );
		Put( ' ');
		Put( Type_Name(A_Bird) );
		Put(' ');
		Put( Movement(A_Bird));
		Put( " and says ");
		Put( Call(A_Bird));
	end Put;


	----------------------------------------------------
	--Movement is an abstract function (Flyingbird and walking bird
	----------------------------------------------------
	--
	 

end Bird_Package;

-- bird_package.ads gives Birs-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Lily McAboy
-- Date: 4/4/2024
---------------------------------------------------

package Bird_Package is

	type Bird_Type is abstract tagged private;
	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type whose My_Name = Name.       -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String);
	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String;
	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------

	function Call(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------

	function Type_Name(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------

	procedure Put(A_Bird : in Bird_Type'Class);

	function Movement(A_Bird : in Bird_Type) return String is abstract;

	private

	type Bird_Type is abstract tagged record
			My_Name : String(1..6);
		end record;

end Bird_Package;
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by:
-- Date:
-----------------------------------------------------

with Bird_Package, 
Duck_Package, 
Goose_Package, 
Owl_Package,
Penguin_Package,
Ostrich_Package,
Kiwi_Package,
Ada.Text_IO;
use Bird_Package,
Duck_Package, 
Goose_Package,
Owl_Package,
Penguin_Package,
Ostrich_Package,
Kiwi_Package,
Ada.Text_IO;


procedure Birds is

	Bird2 : Duck_Type;       -- derived class 1
	Bird3 : Goose_Type;      -- derived class 2
	Bird4 : Owl_Type;        -- derived class 3
	Bird5 : Penguin_Type;
	Bird6: Ostrich_Type;
	Bird7 : Kiwi_Type;
begin
	Put("\nWelcome to the Bird Park!\n");
	
	New_Line;

	Init(Bird2, "Donald");
	Put(Bird2); New_Line;

	Init(Bird3, "Mother");
	Put(Bird3); New_Line;

	Init(Bird4, "Woodsy");
	Put(Bird4); New_Line;

	Init(Bird5, "Oliver");
	Put(Bird5); New_Line;

	Init(Bird6, "Claire");
	Put(Bird6); New_Line;

	Init(Bird7, "Joseph");
	Put(Bird7); New_Line;

	New_Line;
end Birds;

-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

	----------------------------------------------------
	-- A Duck's Call (Over-rides Bird.Call())          -
	-- Receive: A_Duck, a Duck_Type.                   -
	-- Return: "Quack!"                                -
	----------------------------------------------------


	function Call(A_Duck : in Duck_Type) return String is
	begin
		return "Quack!";
	end Call;

	------------------------------------------------------------
	-- Determine type of a Duck (Over-rides Bird.Type_Name()) -
	-- Receive: A_Duck, a Duck_Type.                          -
	-- Return: "Duck".                                        -
	-----------------------------------------------------------

	function Type_Name(A_Duck : in Duck_Type) return String is
	begin
		return "Duck";
	end Type_Name;




end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with flying_bird; use flying_bird;

package Duck_Package is

type Duck_Type is new flying_type with private;
 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
function Type_Name(A_Duck : in Duck_Type) return String;

private

type Duck_Type is new flying_type with 
	record
		null;
	end record;

end Duck_Package;
------------------------------------------------
--FlyingBird.adb defines the flying abstract class
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------------------
--

with bird_package; use bird_package;

package body flying_bird is
	
	function Movement(A_Duck : in Flying_Type) return String is
	begin
		return "flew past";
	end Movement;

end flying_bird;

--------------------------------
--FlyingBird.ads is the package specification for flying birds
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------


with bird_package; use bird_package;

package flying_bird is
	type Flying_Type is new Bird_Type with private;
	
	overriding
	function Movement(A_Duck : in Flying_Type) return String;

	private 
	type Flying_Type is new Bird_Type with 
		record
			null;
		end record;
end flying_bird;
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
	function Call(A_Goose : in Goose_Type) return String is
	begin
		return "Honk!";
	end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

	function Type_Name(A_Goose : in Goose_Type) return String is
	begin
		return "Goose";
	end Type_Name;

end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with flying_bird; use flying_bird;

package Goose_Package is

 type Goose_Type is new flying_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Goose : in Goose_Type) return String;

private

type Goose_Type is new flying_Type with 
	record
		null;
	end record;


end Goose_Package;
-- kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

        function Call(A_Kiwi : in Kiwi_Type) return String is
        begin
                return "Hello Branden";
        end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

        function Type_Name(A_Kiwi : in Kiwi_Type) return String is
        begin
                return "Kiwi";
        end Type_Name;

end Kiwi_Package;

-- kiwi_package.ads gives Kiwi-related declarations,
--
--  and derives Kiwi from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with walking_bird; use walking_bird;

package Kiwi_Package is

 type Kiwi_Type is new walking_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private

type Kiwi_Type is new walking_type with
        record
                null;
        end record;


end Kiwi_Package;

# Makefile for GNAT (Ada) compilation
#  for a 2-level class hierarchy

TARGET = birds
SUBPACKAGES = duck_package.ali goose_package.ali owl_package.ali
PACKAGES = bird_package.ali $(SUBPACKAGES)

CC     = gcc
CFLAGS = -c 

.SUFFIXES:
.SUFFIXES: .adb .ads                  # ada package body & spec.

$(TARGET): $(TARGET).ali $(PACKAGES)  # link target & packages
	$(BIN)gnatbind $(TARGET).ali
	$(BIN)gnatlink $(TARGET).ali

$(TARGET).ali: $(TARGET).adb          # compile target (w/o .ads)
	$(CC) $(CFLAGS) $<

%.ali : %.adb %.ads                   # compile packages (w .ads)
	$(CC) $(CFLAGS) $<

$(SUBPACKAGES) : bird_package.ads     # subclasses depend on superclass

clean:
	/bin/rm -f $(TARGET) *~ *.o *.ali *.c *#


-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

        function Call(A_Ostrich : in Ostrich_Type) return String is
        begin
                return "Snork";
        end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

        function Type_Name(A_Ostrich : in Ostrich_Type) return String is
        begin
                return "Ostrich";
        end Type_Name;

end Ostrich_Package;

-- ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with walking_bird; use walking_bird;

package Ostrich_Package is

 type Ostrich_Type is new walking_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Ostrich : in Ostrich_Type) return String;

private

type Ostrich_Type is new walking_type with
        record
                null;
        end record;


end Ostrich_Package;

-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------

function Call(A_Owl : in Owl_Type) return String is
begin
	return "Whooo!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------

function Type_Name(A_Owl : in Owl_Type) return String is
begin
	return "Owl";
end Type_Name;

end Owl_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with flying_bird; use flying_bird;

package Owl_Package is

type Owl_Type is new flying_type with private;
 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------

function Call(A_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function Type_Name(A_Owl : in Owl_Type) return String;

private

type Owl_Type is new flying_type with
	record
		null;
	end record;

end Owl_Package;
-- penguin_package.adb gives Penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Penguin_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

        function Call(A_Penguin : in Penguin_Type) return String is
        begin
                return "Huh-huh-huh-huuuuh";
        end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

        function Type_Name(A_Penguin : in Penguin_Type) return String is
        begin
                return "Penguin";
        end Type_Name;

end Penguin_Package;
-- penguin_package.ads gives Penguin-related declarations,
--
--  and derives Penguin from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with walking_bird; use walking_bird;

package Penguin_Package is

 type Penguin_Type is new walking_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Penguin : in Penguin_Type) return String;

private

type Penguin_Type is new walking_type with
        record
                null;
        end record;


end Penguin_Package;

Script started on 2024-04-11 20:29:59-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="94" LINES="32"]
]0;lvm5@remotel3: ~/214/projects/10/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ada[00m$ a cat *
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is

	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type whose My_Name = Name.       -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String) is
	begin
		A_Bird.My_Name := Name;
	end Init;
	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String is
	begin
		return A_Bird.My_Name;
	end Name;
	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------
	function Call(A_Bird : in Bird_Type) return String is
	begin
		return "Squawkkk!";
	end Call;
	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------
	--


	function Type_Name(A_Bird : in Bird_Type) return String is
	begin
		return "Bird";
	end Type_Name;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------

	procedure Put(A_Bird : in Bird_Type'Class) is
	begin
		Put( Name(A_Bird) );
		Put( ' ');
		Put( Type_Name(A_Bird) );
		Put(' ');
		Put( Movement(A_Bird));
		Put( " and says ");
		Put( Call(A_Bird));
	end Put;


	----------------------------------------------------
	--Movement is an abstract function (Flyingbird and walking bird
	----------------------------------------------------
	--
	 

end Bird_Package;

-- bird_package.ads gives Birs-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Lily McAboy
-- Date: 4/4/2024
---------------------------------------------------

package Bird_Package is

	type Bird_Type is abstract tagged private;
	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type whose My_Name = Name.       -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String);
	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String;
	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------

	function Call(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------

	function Type_Name(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------

	procedure Put(A_Bird : in Bird_Type'Class);

	function Movement(A_Bird : in Bird_Type) return String is abstract;

	private

	type Bird_Type is abstract tagged record
			My_Name : String(1..6);
		end record;

end Bird_Package;
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by:
-- Date:
-----------------------------------------------------

with Bird_Package, 
Duck_Package, 
Goose_Package, 
Owl_Package,
Penguin_Package,
Ostrich_Package,
Kiwi_Package,
Ada.Text_IO;
use Bird_Package,
Duck_Package, 
Goose_Package,
Owl_Package,
Penguin_Package,
Ostrich_Package,
Kiwi_Package,
Ada.Text_IO;


procedure Birds is

	Bird2 : Duck_Type;       -- derived class 1
	Bird3 : Goose_Type;      -- derived class 2
	Bird4 : Owl_Type;        -- derived class 3
	Bird5 : Penguin_Type;
	Bird6: Ostrich_Type;
	Bird7 : Kiwi_Type;
begin
	Put("\nWelcome to the Bird Park!\n");
	
	New_Line;

	Init(Bird2, "Donald");
	Put(Bird2); New_Line;

	Init(Bird3, "Mother");
	Put(Bird3); New_Line;

	Init(Bird4, "Woodsy");
	Put(Bird4); New_Line;

	Init(Bird5, "Oliver");
	Put(Bird5); New_Line;

	Init(Bird6, "Claire");
	Put(Bird6); New_Line;

	Init(Bird7, "Joseph");
	Put(Bird7); New_Line;

	New_Line;
end Birds;

-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

	----------------------------------------------------
	-- A Duck's Call (Over-rides Bird.Call())          -
	-- Receive: A_Duck, a Duck_Type.                   -
	-- Return: "Quack!"                                -
	----------------------------------------------------


	function Call(A_Duck : in Duck_Type) return String is
	begin
		return "Quack!";
	end Call;

	------------------------------------------------------------
	-- Determine type of a Duck (Over-rides Bird.Type_Name()) -
	-- Receive: A_Duck, a Duck_Type.                          -
	-- Return: "Duck".                                        -
	-----------------------------------------------------------

	function Type_Name(A_Duck : in Duck_Type) return String is
	begin
		return "Duck";
	end Type_Name;




end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with flying_bird; use flying_bird;

package Duck_Package is

type Duck_Type is new flying_type with private;
 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
function Type_Name(A_Duck : in Duck_Type) return String;

private

type Duck_Type is new flying_type with 
	record
		null;
	end record;

end Duck_Package;
------------------------------------------------
--FlyingBird.adb defines the flying abstract class
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------------------
--

with bird_package; use bird_package;

package body flying_bird is
	
	function Movement(A_Duck : in Flying_Type) return String is
	begin
		return "flew past";
	end Movement;

end flying_bird;

--------------------------------
--FlyingBird.ads is the package specification for flying birds
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------


with bird_package; use bird_package;

package flying_bird is
	type Flying_Type is new Bird_Type with private;
	
	overriding
	function Movement(A_Duck : in Flying_Type) return String;

	private 
	type Flying_Type is new Bird_Type with 
		record
			null;
		end record;
end flying_bird;
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
	function Call(A_Goose : in Goose_Type) return String is
	begin
		return "Honk!";
	end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

	function Type_Name(A_Goose : in Goose_Type) return String is
	begin
		return "Goose";
	end Type_Name;

end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with flying_bird; use flying_bird;

package Goose_Package is

 type Goose_Type is new flying_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Goose : in Goose_Type) return String;

private

type Goose_Type is new flying_Type with 
	record
		null;
	end record;


end Goose_Package;
-- kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

        function Call(A_Kiwi : in Kiwi_Type) return String is
        begin
                return "Hello Branden";
        end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

        function Type_Name(A_Kiwi : in Kiwi_Type) return String is
        begin
                return "Kiwi";
        end Type_Name;

end Kiwi_Package;

-- kiwi_package.ads gives Kiwi-related declarations,
--
--  and derives Kiwi from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with walking_bird; use walking_bird;

package Kiwi_Package is

 type Kiwi_Type is new walking_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

 function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------


 function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private

type Kiwi_Type is new walking_type with
        record
                null;
        end record;


end Kiwi_Package;

# Makefile for GNAT (Ada) compilation
#  for a 2-level class hierarchy

TARGET = birds
SUBPACKAGES = duck_package.ali goose_package.ali owl_package.ali
PACKAGES = bird_package.ali $(SUBPACKAGES)

CC     = gcc
CFLAGS = -c 

.SUFFIXES:
.SUFFIXES: .adb .ads                  # ada package body & spec.

$(TARGET): $(TARGET).ali $(PACKAGES)  # link target & packages
	$(BIN)gnatbind $(TARGET).ali
	$(BIN)gnatlink $(TARGET).ali

$(TARGET).ali: $(TARGET).adb          # compile target (w/o .ads)
	$(CC) $(CFLAGS) $<

%.ali : %.adb %.ads                   # compile packages (w .ads)
	$(CC) $(CFLAGS) $<

$(SUBPACKAGES) : bird_package.ads     # subclasses depend on superclass

clean:
	/bin/rm -f $(TARGET) *~ *.o *.ali *.c *#


-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

        function Call(A_Ostrich : in Ostrich_Type) return String is
        begin
                return "Snork";
        end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

        function Type_Name(A_Ostrich : in Ostrich_Type) return String is
        begin
                return "Ostrich";
        end Type_Name;

end Ostrich_Package;

-- ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with walking_bird; use walking_bird;

package Ostrich_Package is

 type Ostrich_Type is new walking_type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                    ------------------------------------------------
--walking_Bird.adb defines the walking abstract class
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------------------
--

with bird_package; use bird_package;

package body walking_bird is

        function Movement(A_Duck : in Walking_Type) return String is
        begin
                return "walked past";
        end Movement;

end walking_bird;

--------------------------------
--walkingBird.ads is the package specification for walking birds
--Name: Lily McAboy
--Date: 4/10/2024
------------------------------------


with bird_package; use bird_package;

package walking_bird is
	type walking_type is new Bird_Type with private;

	overriding
	function Movement(A_Duck : in walking_type) return String;

	private
	type walking_type is new Bird_Type with
		record
			null;
		end record;

end walking_bird;
]0;lvm5@remotel3: ~/214/projects/10/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ada[00m$ gnatmake birds.adb
x86_64-linux-gnu-gcc-7 -c birds.adb
x86_64-linux-gnu-gcc-7 -c bird_package.adb
x86_64-linux-gnu-gcc-7 -c duck_package.adb
x86_64-linux-gnu-gcc-7 -c goose_package.adb
x86_64-linux-gnu-gcc-7 -c kiwi_package.adb
x86_64-linux-gnu-gcc-7 -c ostrich_package.adb
x86_64-linux-gnu-gcc-7 -c owl_package.adb
x86_64-linux-gnu-gcc-7 -c penguin_package.adb
x86_64-linux-gnu-gcc-7 -c flying_bird.adb
x86_64-linux-gnu-gcc-7 -c walking_bird.adb
x86_64-linux-gnu-gnatbind-7 -x birds.ali
x86_64-linux-gnu-gnatlink-7 birds.ali
]0;lvm5@remotel3: ~/214/projects/10/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ada[00m$ ./birds
\nWelcome to the Bird Park!\n
Donald Duck flew past and says Quack!
Mother Goose flew past and says Honk!
Woodsy Owl flew past and says Whooo!
Oliver Penguin walked past and says Huh-huh-huh-huuuuh
Claire Ostrich walked past and says Snork
Joseph Kiwi walked past and says Hello Branden

]0;lvm5@remotel3: ~/214/projects/10/ada[01;32mlvm5@remotel3[00m:[01;34m~/214/projects/10/ada[00m$ exit

Script done on 2024-04-11 20:30:22-04:00 [COMMAND_EXIT_CODE="0"]
