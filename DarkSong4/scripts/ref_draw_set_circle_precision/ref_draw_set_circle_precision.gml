/// @description  draw_set_circle_precision(precision:number)
/// @function  draw_set_circle_precision
/// @param precision:number
if (argument_count != 1) return lua_show_error("draw_set_circle_precision: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_circle_precision: Expected a number for argument0 (precision:number), got " + lua_print_value(argument0));
draw_set_circle_precision(argument0);
