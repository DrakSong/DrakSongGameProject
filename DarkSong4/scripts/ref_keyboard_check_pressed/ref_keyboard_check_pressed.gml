/// @description  keyboard_check_pressed(key:id)
/// @function  keyboard_check_pressed
/// @param key:id
if (argument_count != 1) return lua_show_error("keyboard_check_pressed: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("keyboard_check_pressed: Expected a id for argument0 (key:id), got " + lua_print_value(argument0));
return lua_bool(keyboard_check_pressed_wrap(argument0));

