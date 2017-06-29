/// @description  string_count(substr:string, str:string)
/// @function  string_count
/// @param substr:string
/// @param  str:string
if (argument_count != 2) return lua_show_error("string_count: Expected 2 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_count: Expected a string for argument0 (substr:string), got " + lua_print_value(argument0));
if !(is_string(argument1)) return lua_show_error("string_count: Expected a string for argument1 (str:string), got " + lua_print_value(argument1));
return string_count(argument0, argument1);
