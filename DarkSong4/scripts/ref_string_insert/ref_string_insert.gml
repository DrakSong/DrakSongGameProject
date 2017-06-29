/// @description  string_insert(substr:string, str:string, index:number)
/// @function  string_insert
/// @param substr:string
/// @param  str:string
/// @param  index:number
if (argument_count != 3) return lua_show_error("string_insert: Expected 3 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_insert: Expected a string for argument0 (substr:string), got " + lua_print_value(argument0));
if !(is_string(argument1)) return lua_show_error("string_insert: Expected a string for argument1 (str:string), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("string_insert: Expected a number for argument2 (index:number), got " + lua_print_value(argument2));
return string_insert(argument0, argument1, argument2);

