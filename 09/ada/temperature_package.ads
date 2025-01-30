-----------------------------------------
-- Declare the Temperature Class in Ada
--
-- Name: Lily McAboy
-- Date: 3/37/2024
--
-----------------------------------------

package Temperature_Package is
    type Temperature is private;

    procedure Init(Tp: out Temperature; NewDegrees: in Float; NewScale: in Character);

    function getDegrees(Tp: in Temperature) return Float;

    function getScale(Tp: in Temperature) return Character;

-- Changing functions
    function ToFahrenheit(Tp: in Temperature) return Float;

    function ToCelsius(Tp: in Temperature) return Float;

    function ToKelvin(Tp: in Temperature) return Float;

-- I/O Functions
    procedure Get(Tp: out Temperature);

    function Put(Tp: in Temperature) return String;

-- Mutation Functions
    procedure increase(Tp: in out Temperature; Value: in Float);

    procedure decrease(Tp: in out Temperature; Value: in Float);

-- Equality Functions

    function "="(Tp1, Tp2: in Temperature) return Boolean;

    function "<"(Tp1, Tp2: in Temperature) return Boolean;

private 

    type Temperature is 
        record
            Degrees: Float;
            Scale: Character;
    end record;
    
end Temperature_Package;