/// @description  radtodeg(x:number)
/// @function  radtodeg
/// @param x:number
if (argument_count != 1) return lua_show_error("radtodeg: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("radtodeg: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
return radtodeg(argument0);

