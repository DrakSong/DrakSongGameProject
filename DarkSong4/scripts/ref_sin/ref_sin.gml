/// @description  sin(radian_angle:number)
/// @function  sin
/// @param radian_angle:number
if (argument_count != 1) return lua_show_error("sin: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("sin: Expected a number for argument0 (radian_angle:number), got " + lua_print_value(argument0));
return sin(argument0);

