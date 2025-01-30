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

