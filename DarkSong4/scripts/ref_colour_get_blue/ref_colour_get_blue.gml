/// @description  colour_get_blue(col)
/// @function  colour_get_blue
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_blue: Expected 1 argument, got " + string(argument_count));
return colour_get_blue(argument0);

