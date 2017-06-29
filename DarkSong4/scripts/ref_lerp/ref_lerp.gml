/// @description  lerp(val1:number, val2:number, amount:number)
/// @function  lerp
/// @param val1:number
/// @param  val2:number
/// @param  amount:number
if (argument_count != 3) return lua_show_error("lerp: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("lerp: Expected a number for argument0 (val1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("lerp: Expected a number for argument1 (val2:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("lerp: Expected a number for argument2 (amount:number), got " + lua_print_value(argument2));
return lerp(argument0, argument1, argument2);

