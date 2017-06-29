/// @description  approach(value:number, target:number, delta:number)
/// @function  approach
/// @param value:number
/// @param  target:number
/// @param  delta:number
if (argument_count != 3) return lua_show_error("approach: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("approach: Expected a number for argument0 (value:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("approach: Expected a number for argument1 (target:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("approach: Expected a number for argument2 (delta:number), got " + lua_print_value(argument2));
return Approach(argument0, argument1, argument2);

