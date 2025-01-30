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

