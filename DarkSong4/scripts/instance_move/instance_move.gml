/// @description  instance_move(x, y):bool
/// @function  instance_move
/// @param x
/// @param  y
var nx = x + argument0;
var ny = y + argument1;
if (place_meeting(nx, ny, argument2)) return 0;
x = nx;
y = ny;
return 1;
