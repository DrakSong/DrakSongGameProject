/// @description  draw_circle(x:number, y:number, r:number, outline:bool)
/// @function  draw_circle
/// @param x:number
/// @param  y:number
/// @param  r:number
/// @param  outline:bool
if (argument_count != 4) return lua_show_error("draw_circle: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_circle: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_circle: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_circle: Expected a number for argument2 (r:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_circle: Expected a bool for argument3 (outline:bool), got " + lua_print_value(argument3));
draw_circle(argument0, argument1, argument2, argument3);

