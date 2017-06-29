/// @description  move_outside_solid(self, dir:number, maxdist:number)
/// @function  move_outside_solid
/// @param self
/// @param  dir:number
/// @param  maxdist:number
if (argument_count != 3) return lua_show_error("move_outside_solid: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_outside_solid: Expected a number for argument1 (dir:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("move_outside_solid: Expected a number for argument2 (maxdist:number), got " + lua_print_value(argument2));
with (argument0) move_outside_solid(argument1, argument2);

