/// @description  move_snap(self, hsnap:number, vsnap:number)
/// @function  move_snap
/// @param self
/// @param  hsnap:number
/// @param  vsnap:number
if (argument_count != 3) return lua_show_error("move_snap: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_snap: Expected a number for argument1 (hsnap:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("move_snap: Expected a number for argument2 (vsnap:number), got " + lua_print_value(argument2));
with (argument0) move_snap(argument1, argument2);

