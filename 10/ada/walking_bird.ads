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
