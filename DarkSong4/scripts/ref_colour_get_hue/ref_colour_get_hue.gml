/// @description  colour_get_hue(col)
/// @function  colour_get_hue
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_hue: Expected 1 argument, got " + string(argument_count));
return colour_get_hue(argument0);

