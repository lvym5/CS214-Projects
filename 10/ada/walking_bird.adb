------------------------------------------------
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

