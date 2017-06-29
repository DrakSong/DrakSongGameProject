/// @description  draw_text_ext_colour(x:number, y:number, string:string, sep, w:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
/// @function  draw_text_ext_colour
/// @param x:number
/// @param  y:number
/// @param  string:string
/// @param  sep
/// @param  w:number
/// @param  c1:color
/// @param  c2:color
/// @param  c3:color
/// @param  c4:color
/// @param  alpha:number
if (argument_count != 10) return lua_show_error("draw_text_ext_colour: Expected 10 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_text_ext_colour: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_text_ext_colour: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("draw_text_ext_colour: Expected a string for argument2 (string:string), got " + lua_print_value(argument2));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_text_ext_colour: Expected a number for argument4 (w:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_text_ext_colour: Expected a color for argument5 (c1:color), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_text_ext_colour: Expected a color for argument6 (c2:color), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_text_ext_colour: Expected a color for argument7 (c3:color), got " + lua_print_value(argument7));
if !(is_real(argument8) || is_int64(argument8)) return lua_show_error("draw_text_ext_colour: Expected a color for argument8 (c4:color), got " + lua_print_value(argument8));
if !(is_real(argument9) || is_int64(argument9)) return lua_show_error("draw_text_ext_colour: Expected a number for argument9 (alpha:number), got " + lua_print_value(argument9));
draw_text_ext_colour(argument0, argument1, string_hash_to_newline(argument2), argument3, argument4, argument5, argument6, argument7, argument8, argument9);

