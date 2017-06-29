/// @description  colour_get_green(col)
/// @function  colour_get_green
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_green: Expected 1 argument, got " + string(argument_count));
return colour_get_green(argument0);

