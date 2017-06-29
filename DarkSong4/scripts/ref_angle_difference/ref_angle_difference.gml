/// @description  angle_difference(src:number, dest:number)
/// @function  angle_difference
/// @param src:number
/// @param  dest:number
if (argument_count != 2) return lua_show_error("angle_difference: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("angle_difference: Expected a number for argument0 (src:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("angle_difference: Expected a number for argument1 (dest:number), got " + lua_print_value(argument1));
return angle_difference(argument0, argument1);

