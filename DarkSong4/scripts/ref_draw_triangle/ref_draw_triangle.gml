/// @description  draw_triangle(x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, outline:bool)
/// @function  draw_triangle
/// @param x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
/// @param  x3:number
/// @param  y3:number
/// @param  outline:bool
if (argument_count != 7) return lua_show_error("draw_triangle: Expected 7 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_triangle: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_triangle: Expected a number for argument1 (y1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_triangle: Expected a number for argument2 (x2:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_triangle: Expected a number for argument3 (y2:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_triangle: Expected a number for argument4 (x3:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_triangle: Expected a number for argument5 (y3:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_triangle: Expected a bool for argument6 (outline:bool), got " + lua_print_value(argument6));
draw_triangle(argument0, argument1, argument2, argument3, argument4, argument5, argument6);

