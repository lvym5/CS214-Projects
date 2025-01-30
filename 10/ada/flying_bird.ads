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
