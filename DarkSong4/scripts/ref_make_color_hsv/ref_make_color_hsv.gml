/// @description  make_color_hsv(hue:number, saturation:number, value:number)
/// @function  make_color_hsv
/// @param hue:number
/// @param  saturation:number
/// @param  value:number
if (argument_count != 3) return lua_show_error("make_color_hsv: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("make_color_hsv: Expected a number for argument0 (hue:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("make_color_hsv: Expected a number for argument1 (saturation:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("make_color_hsv: Expected a number for argument2 (value:number), got " + lua_print_value(argument2));
return make_color_hsv(argument0, argument1, argument2);

