/// @description  lengthdir_y(len:number, dir:number)
/// @function  lengthdir_y
/// @param len:number
/// @param  dir:number
if (argument_count != 2) return lua_show_error("lengthdir_y: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("lengthdir_y: Expected a number for argument0 (len:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("lengthdir_y: Expected a number for argument1 (dir:number), got " + lua_print_value(argument1));
return lengthdir_y(argument0, argument1);
