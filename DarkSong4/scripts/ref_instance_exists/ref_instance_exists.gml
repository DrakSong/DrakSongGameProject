/// @description  instance_exists(obj:index)
/// @function  instance_exists
/// @param obj:index
if (argument_count != 1) return lua_show_error("instance_exists: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("instance_exists: Expected a index for argument0 (obj:index), got " + lua_print_value(argument0));
return lua_bool(instance_exists(argument0));

