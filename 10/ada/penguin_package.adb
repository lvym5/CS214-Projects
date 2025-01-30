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
