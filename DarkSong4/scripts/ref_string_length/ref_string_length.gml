/// @description  string_length(str:string)
/// @function  string_length
/// @param str:string
if (argument_count != 1) return lua_show_error("string_length: Expected 1 argument, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_length: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
return string_length(argument0);

