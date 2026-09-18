pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Aggregates_Demo; use Aggregates_Demo;

procedure Tests is
   A : constant Vec3 := [1.0, 2.0, 3.0];
   B : constant Vec3 := [3.0, 2.0, 1.0];
   C : Vec3;
   P : constant Pixel := (R => 10, G => 20, B => 30);
   Q : Pixel;
   V : Int_Vectors.Vector;
begin
   Assert (abs (Dot (A, B) - 10.0) < 1.0E-5);
   Put_Line ("PASS positional array aggregate");

   C := Scale (A, 2.0);
   Assert (abs (C (1) - 2.0) < 1.0E-5);
   Assert (abs (C (3) - 6.0) < 1.0E-5);
   Put_Line ("PASS iterated component array aggregate");

   Q := With_Red (P, 99);
   Assert (Q.R = 99 and then Q.G = 20 and then Q.B = 30);
   Put_Line ("PASS record delta aggregate");

   V := [1, 2, 3, 4];
   Assert (From_List (V) = 10);
   V := [for I in 1 .. 5 => I * I];
   Assert (From_List (V) = 1 + 4 + 9 + 16 + 25);
   Put_Line ("PASS container aggregates");

   Put_Line ("All Aggregates topic tests passed.");
end Tests;
