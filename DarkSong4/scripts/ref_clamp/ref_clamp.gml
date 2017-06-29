/// @description  clamp(val:number, min:number, max:number)
/// @function  clamp
/// @param val:number
/// @param  min:number
/// @param  max:number
if (argument_count != 3) return lua_show_error("clamp: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("clamp: Expected a number for argument0 (val:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("clamp: Expected a number for argument1 (min:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("clamp: Expected a number for argument2 (max:number), got " + lua_print_value(argument2));
return clamp(argument0, argument1, argument2);

