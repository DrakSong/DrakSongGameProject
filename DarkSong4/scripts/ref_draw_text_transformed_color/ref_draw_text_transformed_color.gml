/// @description  draw_text_transformed_color(x:number, y:number, string:string, xscale:number, yscale:number, angle:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
/// @function  draw_text_transformed_color
/// @param x:number
/// @param  y:number
/// @param  string:string
/// @param  xscale:number
/// @param  yscale:number
/// @param  angle:number
/// @param  c1:color
/// @param  c2:color
/// @param  c3:color
/// @param  c4:color
/// @param  alpha:number
if (argument_count != 11) return lua_show_error("draw_text_transformed_color: Expected 11 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_text_transformed_color: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_text_transformed_color: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("draw_text_transformed_color: Expected a string for argument2 (string:string), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_text_transformed_color: Expected a number for argument3 (xscale:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_text_transformed_color: Expected a number for argument4 (yscale:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_text_transformed_color: Expected a number for argument5 (angle:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_text_transformed_color: Expected a color for argument6 (c1:color), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_text_transformed_color: Expected a color for argument7 (c2:color), got " + lua_print_value(argument7));
if !(is_real(argument8) || is_int64(argument8)) return lua_show_error("draw_text_transformed_color: Expected a color for argument8 (c3:color), got " + lua_print_value(argument8));
if !(is_real(argument9) || is_int64(argument9)) return lua_show_error("draw_text_transformed_color: Expected a color for argument9 (c4:color), got " + lua_print_value(argument9));
if !(is_real(argument10) || is_int64(argument10)) return lua_show_error("draw_text_transformed_color: Expected a number for argument10 (alpha:number), got " + lua_print_value(argument10));
draw_text_transformed_color(argument0, argument1, string_hash_to_newline(argument2), argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);

