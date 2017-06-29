/// @description  place_free(self, x:number, y:number)
/// @function  place_free
/// @param self
/// @param  x:number
/// @param  y:number
if (argument_count != 3) return lua_show_error("place_free: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("place_free: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("place_free: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
with (argument0) return lua_bool(place_free(argument1, argument2));

