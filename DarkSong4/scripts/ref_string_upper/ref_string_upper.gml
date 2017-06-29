/// @description  string_upper(str:string)
/// @function  string_upper
/// @param str:string
if (argument_count != 1) return lua_show_error("string_upper: Expected 1 argument, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_upper: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
return string_upper(argument0);

