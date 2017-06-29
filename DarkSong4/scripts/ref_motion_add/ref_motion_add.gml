/// @description  motion_add(self, dir:number, speed:number)
/// @function  motion_add
/// @param self
/// @param  dir:number
/// @param  speed:number
if (argument_count != 3) return lua_show_error("motion_add: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("motion_add: Expected a number for argument1 (dir:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("motion_add: Expected a number for argument2 (speed:number), got " + lua_print_value(argument2));
with (argument0) motion_add(argument1, argument2);

