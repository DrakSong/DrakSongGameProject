/// @description  color_get_red(col)
/// @function  color_get_red
/// @param col
if (argument_count != 1) return lua_show_error("color_get_red: Expected 1 argument, got " + string(argument_count));
return color_get_red(argument0);

