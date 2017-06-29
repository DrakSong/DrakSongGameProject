/// @description  draw_text_transformed(x:number, y:number, string:string, xscale:number, yscale:number, angle:number)
/// @function  draw_text_transformed
/// @param x:number
/// @param  y:number
/// @param  string:string
/// @param  xscale:number
/// @param  yscale:number
/// @param  angle:number
if (argument_count != 6) return lua_show_error("draw_text_transformed: Expected 6 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_text_transformed: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_text_transformed: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("draw_text_transformed: Expected a string for argument2 (string:string), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_text_transformed: Expected a number for argument3 (xscale:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_text_transformed: Expected a number for argument4 (yscale:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_text_transformed: Expected a number for argument5 (angle:number), got " + lua_print_value(argument5));
draw_text_transformed(argument0, argument1, string_hash_to_newline(argument2), argument3, argument4, argument5);

