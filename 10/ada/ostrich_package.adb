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

