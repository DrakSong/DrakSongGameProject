/// @description  color_get_saturation(col)
/// @function  color_get_saturation
/// @param col
if (argument_count != 1) return lua_show_error("color_get_saturation: Expected 1 argument, got " + string(argument_count));
return color_get_saturation(argument0);

