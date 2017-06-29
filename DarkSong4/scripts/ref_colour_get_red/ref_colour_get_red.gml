/// @description  colour_get_red(col)
/// @function  colour_get_red
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_red: Expected 1 argument, got " + string(argument_count));
return colour_get_red(argument0);

