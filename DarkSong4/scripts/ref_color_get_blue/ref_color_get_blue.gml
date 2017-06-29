/// @description  color_get_blue(col)
/// @function  color_get_blue
/// @param col
if (argument_count != 1) return lua_show_error("color_get_blue: Expected 1 argument, got " + string(argument_count));
return color_get_blue(argument0);

