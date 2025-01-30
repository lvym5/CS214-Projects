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

