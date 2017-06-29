/// @description  draw_get_colour()
/// @function  draw_get_colour
if (argument_count != 0) return lua_show_error("draw_get_colour: Expected 0 arguments, got " + string(argument_count));
return draw_get_colour();

