/// @description  draw_text_color(x:number, y:number, string:string, c1:color, c2:color, c3:color, c4:color, alpha:number)
/// @function  draw_text_color
/// @param x:number
/// @param  y:number
/// @param  string:string
/// @param  c1:color
/// @param  c2:color
/// @param  c3:color
/// @param  c4:color
/// @param  alpha:number
if (argument_count != 8) return lua_show_error("draw_text_color: Expected 8 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_text_color: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_text_color: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("draw_text_color: Expected a string for argument2 (string:string), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_text_color: Expected a color for argument3 (c1:color), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_text_color: Expected a color for argument4 (c2:color), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_text_color: Expected a color for argument5 (c3:color), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_text_color: Expected a color for argument6 (c4:color), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_text_color: Expected a number for argument7 (alpha:number), got " + lua_print_value(argument7));
draw_text_color(argument0, argument1, string_hash_to_newline(argument2), argument3, argument4, argument5, argument6, argument7);

