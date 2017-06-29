/// @description  draw_get_color()
/// @function  draw_get_color
if (argument_count != 0) return lua_show_error("draw_get_color: Expected 0 arguments, got " + string(argument_count));
return draw_get_color();

