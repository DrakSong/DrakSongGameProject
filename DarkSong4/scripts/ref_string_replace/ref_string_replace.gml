/// @description  string_replace(str:string, substr:string, newstr:string)
/// @function  string_replace
/// @param str:string
/// @param  substr:string
/// @param  newstr:string
if (argument_count != 3) return lua_show_error("string_replace: Expected 3 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_replace: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
if !(is_string(argument1)) return lua_show_error("string_replace: Expected a string for argument1 (substr:string), got " + lua_print_value(argument1));
if !(is_string(argument2)) return lua_show_error("string_replace: Expected a string for argument2 (newstr:string), got " + lua_print_value(argument2));
return string_replace(argument0, argument1, argument2);

