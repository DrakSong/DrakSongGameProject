/// @description  instance_move(self, dx:number, dy:number, obstacle:id)
/// @function  instance_move
/// @param self
/// @param  dx:number
/// @param  dy:number
/// @param  obstacle:id
if (argument_count != 4) return lua_show_error("instance_move: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("instance_move: Expected a number for argument1 (dx:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("instance_move: Expected a number for argument2 (dy:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("instance_move: Expected a id for argument3 (obstacle:id), got " + lua_print_value(argument3));
with (argument0) return lua_bool(instance_move(argument1, argument2, argument3));

