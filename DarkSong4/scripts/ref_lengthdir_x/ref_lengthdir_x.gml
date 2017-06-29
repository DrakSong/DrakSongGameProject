/// @description  lengthdir_x(len:number, dir:number)
/// @function  lengthdir_x
/// @param len:number
/// @param  dir:number
if (argument_count != 2) return lua_show_error("lengthdir_x: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("lengthdir_x: Expected a number for argument0 (len:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("lengthdir_x: Expected a number for argument1 (dir:number), got " + lua_print_value(argument1));
return lengthdir_x(argument0, argument1);

