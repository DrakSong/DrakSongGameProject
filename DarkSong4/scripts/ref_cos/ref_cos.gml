/// @description  cos(radian_angle:number)
/// @function  cos
/// @param radian_angle:number
if (argument_count != 1) return lua_show_error("cos: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("cos: Expected a number for argument0 (radian_angle:number), got " + lua_print_value(argument0));
return cos(argument0);

