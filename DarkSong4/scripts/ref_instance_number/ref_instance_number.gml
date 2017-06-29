/// @description  instance_number(obj:index)
/// @function  instance_number
/// @param obj:index
if (argument_count != 1) return lua_show_error("instance_number: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("instance_number: Expected a index for argument0 (obj:index), got " + lua_print_value(argument0));
return instance_number(argument0);

