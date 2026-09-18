pragma Ada_2022;

package body Aggregates_Demo is

   function Dot (A, B : Vec3) return Float is
      Acc : Float := 0.0;
   begin
      for I in Vec3'Range loop
         Acc := Acc + A (I) * B (I);
      end loop;
      return Acc;
   end Dot;

   function Scale (V : Vec3; K : Float) return Vec3 is
   begin
      return [for I in Vec3'Range => V (I) * K];
   end Scale;

   function With_Red (P : Pixel; R : Natural) return Pixel is
   begin
      return (P with delta R => R);
   end With_Red;

   function From_List (Values : Int_Vectors.Vector) return Integer is
      Acc : Integer := 0;
   begin
      for X of Values loop
         Acc := Acc + X;
      end loop;
      return Acc;
   end From_List;

end Aggregates_Demo;
