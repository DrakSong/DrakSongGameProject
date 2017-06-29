/// @description  string_ord_at(str:string, index:number)
/// @function  string_ord_at
/// @param str:string
/// @param  index:number
if (argument_count != 2) return lua_show_error("string_ord_at: Expected 2 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_ord_at: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("string_ord_at: Expected a number for argument1 (index:number), got " + lua_print_value(argument1));
return string_ord_at(argument0, argument1);

