--  Ada 2022 topic: array, record, delta, and container aggregates.
pragma Ada_2022;

with Ada.Containers.Vectors;

package Aggregates_Demo is

   type Vec3 is array (1 .. 3) of Float;

   type Pixel is record
      R, G, B : Natural := 0;
   end record;

   package Int_Vectors is new Ada.Containers.Vectors
     (Index_Type => Positive, Element_Type => Integer);

   function Dot (A, B : Vec3) return Float;
   function Scale (V : Vec3; K : Float) return Vec3;
   function With_Red (P : Pixel; R : Natural) return Pixel;
   --  Delta aggregate on a record.

   function From_List (Values : Int_Vectors.Vector) return Integer;
   --  Sum; callers build Vectors with container aggregates.

end Aggregates_Demo;
