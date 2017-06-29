/// @description  color_get_green(col)
/// @function  color_get_green
/// @param col
if (argument_count != 1) return lua_show_error("color_get_green: Expected 1 argument, got " + string(argument_count));
return color_get_green(argument0);

