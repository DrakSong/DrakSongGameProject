/// @description  dcos(degree_angle:number)
/// @function  dcos
/// @param degree_angle:number
if (argument_count != 1) return lua_show_error("dcos: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("dcos: Expected a number for argument0 (degree_angle:number), got " + lua_print_value(argument0));
return dcos(argument0);

