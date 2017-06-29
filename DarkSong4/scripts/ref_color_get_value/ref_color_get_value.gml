/// @description  color_get_value(col)
/// @function  color_get_value
/// @param col
if (argument_count != 1) return lua_show_error("color_get_value: Expected 1 argument, got " + string(argument_count));
return color_get_value(argument0);

