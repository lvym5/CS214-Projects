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

