/// @description  string_set_byte_at(str:string, index:number, val:number)
/// @function  string_set_byte_at
/// @param str:string
/// @param  index:number
/// @param  val:number
if (argument_count != 3) return lua_show_error("string_set_byte_at: Expected 3 arguments, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_set_byte_at: Expected a string for argument0 (str:string), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("string_set_byte_at: Expected a number for argument1 (index:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("string_set_byte_at: Expected a number for argument2 (val:number), got " + lua_print_value(argument2));
return string_set_byte_at(argument0, argument1, argument2);

