/// @description  draw_rectangle(x1:number, y1:number, x2:number, y2:number, outline:bool)
/// @function  draw_rectangle
/// @param x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
/// @param  outline:bool
if (argument_count != 5) return lua_show_error("draw_rectangle: Expected 5 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_rectangle: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_rectangle: Expected a number for argument1 (y1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_rectangle: Expected a number for argument2 (x2:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_rectangle: Expected a number for argument3 (y2:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_rectangle: Expected a bool for argument4 (outline:bool), got " + lua_print_value(argument4));
draw_rectangle(argument0, argument1, argument2, argument3, argument4);

