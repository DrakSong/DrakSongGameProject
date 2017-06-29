/// @description  string_width_ext(string:string, sep:number, w:number)
/// @function  string_width_ext
/// @param string:string
/// @param  sep:number
/// @param  w:number
if (argument_count != 3) return lua_show_error("string_width_ext: Expected 3 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_width_ext: Expected a string for argument0 (string:string), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("string_width_ext: Expected a number for argument1 (sep:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("string_width_ext: Expected a number for argument2 (w:number), got " + lua_print_value(argument2));
return string_width_ext(string_hash_to_newline(argument0), argument1, argument2);

