/// @description  distance_to_point(self, x:number, y:number)
/// @function  distance_to_point
/// @param self
/// @param  x:number
/// @param  y:number
if (argument_count != 3) return lua_show_error("distance_to_point: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("distance_to_point: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("distance_to_point: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
with (argument0) return distance_to_point(argument1, argument2);

