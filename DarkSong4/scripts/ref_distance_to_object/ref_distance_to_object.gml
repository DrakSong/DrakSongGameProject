/// @description  distance_to_object(self, obj:index)
/// @function  distance_to_object
/// @param self
/// @param  obj:index
if (argument_count != 2) return lua_show_error("distance_to_object: Expected 2 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("distance_to_object: Expected a index for argument1 (obj:index), got " + lua_print_value(argument1));
with (argument0) return distance_to_object(argument1);

