/// @description  move_towards_point(self, x:number, y:number, sp:number)
/// @function  move_towards_point
/// @param self
/// @param  x:number
/// @param  y:number
/// @param  sp:number
if (argument_count != 4) return lua_show_error("move_towards_point: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_towards_point: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("move_towards_point: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("move_towards_point: Expected a number for argument3 (sp:number), got " + lua_print_value(argument3));
with (argument0) move_towards_point(argument1, argument2, argument3);

