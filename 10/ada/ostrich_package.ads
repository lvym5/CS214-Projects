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

