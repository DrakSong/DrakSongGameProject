/// @description  draw_set_font(font:index)
/// @function  draw_set_font
/// @param font:index
if (argument_count != 1) return lua_show_error("draw_set_font: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_font: Expected a index for argument0 (font:index), got " + lua_print_value(argument0));
draw_set_font(argument0);

