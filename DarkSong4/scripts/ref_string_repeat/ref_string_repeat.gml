/// @description  string_repeat(str:string, count:number)
/// @function  string_repeat
/// @param str:string
/// @param  count:number
if (argument_count != 2) return lua_show_error("string_repeat: Expected 2 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_repeat: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("string_repeat: Expected a number for argument1 (count:number), got " + lua_print_value(argument1));
return string_repeat(argument0, argument1);

