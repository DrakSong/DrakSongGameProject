/// @description  gamepad_axis_value(gp:index, axis:index)
/// @function  gamepad_axis_value
/// @param gp:index
/// @param  axis:index
if (argument_count != 2) return lua_show_error("gamepad_axis_value: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("gamepad_axis_value: Expected a index for argument0 (gp:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("gamepad_axis_value: Expected a index for argument1 (axis:index), got " + lua_print_value(argument1));
return gamepad_axis_value(argument0, argument1);
