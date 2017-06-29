/// @description  collision_point(self, x:number, y:number, obj:index, prec:bool, notme:bool)
/// @function  collision_point
/// @param self
/// @param  x:number
/// @param  y:number
/// @param  obj:index
/// @param  prec:bool
/// @param  notme:bool
if (argument_count != 6) return lua_show_error("collision_point: Expected 6 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("collision_point: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("collision_point: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("collision_point: Expected a index for argument3 (obj:index), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("collision_point: Expected a bool for argument4 (prec:bool), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("collision_point: Expected a bool for argument5 (notme:bool), got " + lua_print_value(argument5));
with (argument0) return collision_point(argument1, argument2, argument3, argument4, argument5);

