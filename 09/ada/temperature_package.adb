-----------------------------------------
-- Create the Temperature Operations in Ada
--
-- Name: Lily McAboy
-- Date: 3/37/2024
--
-----------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Exceptions; use Ada.Exceptions;

package body Temperature_Package is

    procedure Init(Tp: out Temperature; NewDegrees: in Float; NewScale: in Character) is
    begin
        Tp.Degrees := NewDegrees;
        Tp.Scale := NewScale;
    end Init;

    function getDegrees(Tp: in Temperature) return Float is
    begin  
        return Tp.Degrees;
    end getDegrees;

    function getScale(Tp: in Temperature) return Character is
    begin
        return Tp.Scale;
    end getScale;

    function ToFahrenheit(Tp: in Temperature) return Float is
    begin
        case Tp.Scale is
            when 'C' =>
            when 'c' =>
                return (Tp.Degrees * (9.0 / 5.0) + 32.0);
            when 'K' =>
            when 'k' =>
                return (Tp.Degrees - 273.15) * (9.0 / 5.0) + 32.0;
            when others =>
                return Tp.Degrees; 
        end case;
    end ToFahrenheit;

    function ToCelsius(Tp: in Temperature) return Float is
    begin
        case Tp.Scale is
            when 'F' =>
            when 'f' =>
                return (Tp.Degrees - 32.0) * (5.0 / 9.0);
            when 'K' =>
            when 'k' =>
                return (Tp.Degrees - 273.15);
            when others =>
                return Tp.Degrees; 
        end case;
    end ToCelsius;

    function ToKelvin(Tp: in Temperature) return Float is
    begin
        case Tp.Scale is
            when 'C' =>
            when 'c' =>
                return (Tp.Degrees + 273.15);
            when 'F' =>
            when 'f' =>
                return (Tp.Degrees - 32.0) * (5.0 / 9.0) + 273.15;
            when others =>
                return Tp.Degrees; 
        end case;
    end ToKelvin;

-- I/O Operations

    procedure Get(Tp: out Temperature) is
        Input: String(1..16);
        Input_Length: Natural;
        myDegree: Float := Float'Value(Input);
        myChar: Character := Input(Input_Length);
    begin
        Put("Enter your temp: ");
        Get_Line(Input, Input_Length);
        tp.Scale := myChar;
        Tp.Degrees := myDegree;
    end Get;

    function Put(Tp: in Temperature) return String is
    begin
        Put(Tp.Degrees); Put(" "); Put(Tp.Scale); New_Line;
    end Put;

-- Mutation Operations

    procedure increase(Tp: in out Temperature; Value: in Float) is
    begin
        Tp.degrees := Tp.degrees + Value;
    end increase;

    procedure decrease(Tp: in out Temperature; Value: in Float) is
    Tp.Degrees := Tp.degrees - Value;
    end decrease;

-- Equality Functions
    function "="(Tp1, Tp2: in Temperature) return Boolean is
    begin
        return ToFahrenheit(Tp1) = ToFahrenheit(Tp2);
    end "=";

    function "<"(Tp1, Tp2: in Temperature) return Boolean is
    begin
        return ToFahrenheit(Tp1) < ToFahrenheit(Tp2);
    end "<";

end Temperature_Package