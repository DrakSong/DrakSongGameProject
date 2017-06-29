/// @description  power(x:number, n:number)
/// @function  power
/// @param x:number
/// @param  n:number
if (argument_count != 2) return lua_show_error("power: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("power: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("power: Expected a number for argument1 (n:number), got " + lua_print_value(argument1));
return power(argument0, argument1);

