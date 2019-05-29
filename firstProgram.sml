(* this is a comment. This is our first program *)



val x = 34;
(* static env: x : int *)
(* dynamic env:  x --> 34 *)

(* 34 is an expression that is an integer value *)

val y = 17; (* each is a binding, each variable is a sequence of binding  *)
(* static env: x :int, y: int  *)
(* dynamic env:  x --> 34, y --> 17  *)


val z = (x+y)+ (y+2);
(* static env: x: int, y: int, z: int *)
(* dynamic env: x -->  34, y --> 17, z --> 70  *)

val q = z + 1

(* dynamic env: x --> 34, y --> 17, z --> 70, q -->. 71 *)

val abs_of_z = if z < 0 then 0 - z else z;


val a = 10;

fun pow(x : int, y: int) =
    if  y=0
    then 1
    else x * pow(x, y-1)


fun cube(x : int ) =
    pow(x,3);

val sixtyFour = cube(4);

val fortyTwo = pow(2,2+2) + pow(4,2) + cube(2) + 2;
