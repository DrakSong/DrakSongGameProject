/// @description  string_delete(str:string, index:number, count:number)
/// @function  string_delete
/// @param str:string
/// @param  index:number
/// @param  count:number
if (argument_count != 3) return lua_show_error("string_delete: Expected 3 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_delete: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("string_delete: Expected a number for argument1 (index:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("string_delete: Expected a number for argument2 (count:number), got " + lua_print_value(argument2));
return string_delete(argument0, argument1, argument2);

