/// @description  draw_point(x:number, y:number)
/// @function  draw_point
/// @param x:number
/// @param  y:number
if (argument_count != 2) return lua_show_error("draw_point: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_point: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_point: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
draw_point(argument0, argument1);

