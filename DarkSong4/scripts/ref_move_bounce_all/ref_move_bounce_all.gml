/// @description  move_bounce_all(self, advanced:bool)
/// @function  move_bounce_all
/// @param self
/// @param  advanced:bool
if (argument_count != 2) return lua_show_error("move_bounce_all: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_bounce_all: Expected a bool for argument1 (advanced:bool), got " + lua_print_value(argument1));
with (argument0) move_bounce_all(argument1);

