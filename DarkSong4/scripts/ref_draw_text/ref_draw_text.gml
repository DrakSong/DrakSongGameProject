/// @description  draw_text(x:number, y:number, string:string)
/// @function  draw_text
/// @param x:number
/// @param  y:number
/// @param  string:string
if (argument_count != 3) return lua_show_error("draw_text: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_text: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_text: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("draw_text: Expected a string for argument2 (string:string), got " + lua_print_value(argument2));
draw_text(argument0, argument1, string_hash_to_newline(argument2));

