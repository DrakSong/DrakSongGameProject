/// @description  gamepad_button_check(gp:index, bt:index)
/// @function  gamepad_button_check
/// @param gp:index
/// @param  bt:index
if (argument_count != 2) return lua_show_error("gamepad_button_check: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("gamepad_button_check: Expected a index for argument0 (gp:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("gamepad_button_check: Expected a index for argument1 (bt:index), got " + lua_print_value(argument1));
return lua_bool(gamepad_button_check(argument0, argument1));

