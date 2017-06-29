/// @description  colour_get_value(col)
/// @function  colour_get_value
/// @param col
if (argument_count != 1) return lua_show_error("colour_get_value: Expected 1 argument, got " + string(argument_count));
return colour_get_value(argument0);

