/// @description  draw_line_width(x1:number, y1:number, x2:number, y2:number, w:number)
/// @function  draw_line_width
/// @param x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
/// @param  w:number
if (argument_count != 5) return lua_show_error("draw_line_width: Expected 5 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_line_width: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_line_width: Expected a number for argument1 (y1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_line_width: Expected a number for argument2 (x2:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_line_width: Expected a number for argument3 (y2:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_line_width: Expected a number for argument4 (w:number), got " + lua_print_value(argument4));
draw_line_width(argument0, argument1, argument2, argument3, argument4);

