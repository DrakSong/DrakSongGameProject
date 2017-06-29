/// @description  draw_set_alpha(alpha:number)
/// @function  draw_set_alpha
/// @param alpha:number
if (argument_count != 1) return lua_show_error("draw_set_alpha: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_alpha: Expected a number for argument0 (alpha:number), got " + lua_print_value(argument0));
draw_set_alpha(argument0);

