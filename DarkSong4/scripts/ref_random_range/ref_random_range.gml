/// @description  random_range(x1:number, x2:number)
/// @function  random_range
/// @param x1:number
/// @param  x2:number
if (argument_count != 2) return lua_show_error("random_range: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("random_range: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("random_range: Expected a number for argument1 (x2:number), got " + lua_print_value(argument1));
return random_range(argument0, argument1);

