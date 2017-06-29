/// @description  colour_get_saturation(col)
/// @function  colour_get_saturation
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_saturation: Expected 1 argument, got " + string(argument_count));
return colour_get_saturation(argument0);

