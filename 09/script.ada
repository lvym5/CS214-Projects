Script started on 2024-04-05 14:45:48-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="119" LINES="68"]
]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ cat temperature. _package.adb
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

end Temperature_Package]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ cat temperature_package.ads
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
    
end Temperature_Package;]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ cat temperature_tester.adb
-----------------------------------------
-- Testing the Temperature Class in Ada
--
-- Name: Lily McAboy
-- Date: 3/37/2024
--
-----------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package; use Temperature_Package;

procedure Temperature_Tester is
    Base: Temperature;
    Limit: Temperature;
    Step: Float;
begin 
    Get(Base);
    Get(Limit);
    Get(Step);

    while Base < Limit loop
        Put("F: ");
        Put(ToFahrenheit(Base));
        New_Line;
        Put("C: ");
        Put(ToCelsius(Base));
        New_Line;
        Put("K: ");
        Put(ToKelvin(Base));
        Increase(Base, Step);
    end loop;
    
End Temperature_Tester;]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ gcc -c name_tester.adb
[01m[Kgcc:[m[K [01;31m[Kerror: [m[Kname_tester.adb: No such file or directory
[01m[Kgcc:[m[K [01;31m[Kfatal error: [m[Kno input files
compilation terminated.
]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ gcc -c name_pac        temer  perature_tester.adb
[01m[Kgcc:[m[K [01;31m[Kfatal error: [m[Kcannot execute '[01m[Kgnat1[m[K': execvp: No such file or directory
compilation terminated.
]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ gcc -c temperature_tester.adb[1P[1P[1P[1P[1P[1P[1@p[1@a[1@c[1@k[1@a[1@g[1@e
[01m[Kgcc:[m[K [01;31m[Kfatal error: [m[Kcannot execute '[01m[Kgnat1[m[K': execvp: No such file or directory
compilation terminated.
]0;lvm5@maroon07: ~/214/projects/09/ada[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ada[00m$ exit

Script done on 2024-04-05 14:46:45-04:00 [COMMAND_EXIT_CODE="1"]
