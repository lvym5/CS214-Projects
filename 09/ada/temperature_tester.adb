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
    
End Temperature_Tester;