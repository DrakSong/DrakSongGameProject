/// @description  draw_set_colour(col:color)
/// @function  draw_set_colour
/// @param col:color
if (argument_count != 1) return lua_show_error("draw_set_colour: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_colour: Expected a color for argument0 (col:color), got " + lua_print_value(argument0));
draw_set_colour(argument0);

