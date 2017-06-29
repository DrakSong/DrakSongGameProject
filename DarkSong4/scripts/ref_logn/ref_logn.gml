/// @description  logn(n:number, x:number)
/// @function  logn
/// @param n:number
/// @param  x:number
if (argument_count != 2) return lua_show_error("logn: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("logn: Expected a number for argument0 (n:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("logn: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
return logn(argument0, argument1);

