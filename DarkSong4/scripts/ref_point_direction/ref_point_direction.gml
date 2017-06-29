/// @description  point_direction(x1:number, y1:number, x2:number, y2:number)
/// @function  point_direction
/// @param x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
if (argument_count != 4) return lua_show_error("point_direction: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("point_direction: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("point_direction: Expected a number for argument1 (y1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("point_direction: Expected a number for argument2 (x2:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("point_direction: Expected a number for argument3 (y2:number), got " + lua_print_value(argument3));
return point_direction(argument0, argument1, argument2, argument3);

