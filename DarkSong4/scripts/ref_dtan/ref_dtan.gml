/// @description  dtan(degree_angle:number)
/// @function  dtan
/// @param degree_angle:number
if (argument_count != 1) return lua_show_error("dtan: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("dtan: Expected a number for argument0 (degree_angle:number), got " + lua_print_value(argument0));
return dtan(argument0);

