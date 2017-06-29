/// @description  draw_clear_alpha(:color, alpha:number)
/// @function  draw_clear_alpha
/// @param :color
/// @param  alpha:number
if (argument_count != 2) return lua_show_error("draw_clear_alpha: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_clear_alpha: Expected a color for argument0 (:color), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_clear_alpha: Expected a number for argument1 (alpha:number), got " + lua_print_value(argument1));
draw_clear_alpha(argument0, argument1);

