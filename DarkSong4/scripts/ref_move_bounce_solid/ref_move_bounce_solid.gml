/// @description  move_bounce_solid(self, advanced:bool)
/// @function  move_bounce_solid
/// @param self
/// @param  advanced:bool
if (argument_count != 2) return lua_show_error("move_bounce_solid: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_bounce_solid: Expected a bool for argument1 (advanced:bool), got " + lua_print_value(argument1));
with (argument0) move_bounce_solid(argument1);

