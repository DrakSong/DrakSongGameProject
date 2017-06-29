/// @description  draw_clear(:color)
/// @function  draw_clear
/// @param :color
if (argument_count != 1) return lua_show_error("draw_clear: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_clear: Expected a color for argument0 (:color), got " + lua_print_value(argument0));
draw_clear(argument0);

