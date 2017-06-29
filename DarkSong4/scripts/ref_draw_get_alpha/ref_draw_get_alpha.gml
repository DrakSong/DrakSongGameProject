/// @description  draw_get_alpha()
/// @function  draw_get_alpha
if (argument_count != 0) return lua_show_error("draw_get_alpha: Expected 0 arguments, got " + string(argument_count));
return draw_get_alpha();

