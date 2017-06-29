/// @description  collision_circle(self, x1:number, y1:number, radius, obj:index, prec, notme)
/// @function  collision_circle
/// @param self
/// @param  x1:number
/// @param  y1:number
/// @param  radius
/// @param  obj:index
/// @param  prec
/// @param  notme
if (argument_count != 7) return lua_show_error("collision_circle: Expected 7 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("collision_circle: Expected a number for argument1 (x1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("collision_circle: Expected a number for argument2 (y1:number), got " + lua_print_value(argument2));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("collision_circle: Expected a index for argument4 (obj:index), got " + lua_print_value(argument4));
with (argument0) return collision_circle(argument1, argument2, argument3, argument4, argument5, argument6);

