/// @description  collision_rectangle(self, x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme)
/// @function  collision_rectangle
/// @param self
/// @param  x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
/// @param  obj:index
/// @param  prec
/// @param  notme
if (argument_count != 8) return lua_show_error("collision_rectangle: Expected 8 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("collision_rectangle: Expected a number for argument1 (x1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("collision_rectangle: Expected a number for argument2 (y1:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("collision_rectangle: Expected a number for argument3 (x2:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("collision_rectangle: Expected a number for argument4 (y2:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("collision_rectangle: Expected a index for argument5 (obj:index), got " + lua_print_value(argument5));
with (argument0) return collision_rectangle(argument1, argument2, argument3, argument4, argument5, argument6, argument7);

