/// @description  string_height(:string)
/// @function  string_height
/// @param :string
if (argument_count != 1) return lua_show_error("string_height: Expected 1 argument, got " + string(argument_count));
if !(is_string(argument0)) return lua_show_error("string_height: Expected a string for argument0 (:string), got " + lua_print_value(argument0));
return string_height(string_hash_to_newline(argument0));

