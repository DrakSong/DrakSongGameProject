/// @description  abs(x:number)
/// @function  abs
/// @param x:number
if (argument_count != 1) return lua_show_error("abs: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("abs: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
return abs(argument0);

