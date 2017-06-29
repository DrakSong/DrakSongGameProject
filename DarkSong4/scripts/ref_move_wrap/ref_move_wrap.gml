/// @description  move_wrap(self, hor:bool, vert:bool, margin:number)
/// @function  move_wrap
/// @param self
/// @param  hor:bool
/// @param  vert:bool
/// @param  margin:number
if (argument_count != 4) return lua_show_error("move_wrap: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_wrap: Expected a bool for argument1 (hor:bool), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("move_wrap: Expected a bool for argument2 (vert:bool), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("move_wrap: Expected a number for argument3 (margin:number), got " + lua_print_value(argument3));
with (argument0) move_wrap(argument1, argument2, argument3);

