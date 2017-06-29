/// @description  string_digits(str:string)
/// @function  string_digits
/// @param str:string
if (argument_count != 1) return lua_show_error("string_digits: Expected 1 argument, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_digits: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
return string_digits(argument0);

