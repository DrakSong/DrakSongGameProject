/// @description  make_colour_rgb(red:number, green:number, blue:number)
/// @function  make_colour_rgb
/// @param red:number
/// @param  green:number
/// @param  blue:number
if (argument_count != 3) return lua_show_error("make_colour_rgb: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("make_colour_rgb: Expected a number for argument0 (red:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("make_colour_rgb: Expected a number for argument1 (green:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("make_colour_rgb: Expected a number for argument2 (blue:number), got " + lua_print_value(argument2));
return make_colour_rgb(argument0, argument1, argument2);

