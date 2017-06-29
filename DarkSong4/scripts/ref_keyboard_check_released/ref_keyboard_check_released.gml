/// @description  keyboard_check_released(key:id)
/// @function  keyboard_check_released
/// @param key:id
if (argument_count != 1) return lua_show_error("keyboard_check_released: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("keyboard_check_released: Expected a id for argument0 (key:id), got " + lua_print_value(argument0));
return lua_bool(keyboard_check_released_wrap(argument0));
