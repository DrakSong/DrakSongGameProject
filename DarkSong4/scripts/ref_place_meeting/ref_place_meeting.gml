/// @description  place_meeting(self, x:number, y:number, obj:index)
/// @function  place_meeting
/// @param self
/// @param  x:number
/// @param  y:number
/// @param  obj:index
if (argument_count != 4) return lua_show_error("place_meeting: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("place_meeting: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("place_meeting: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("place_meeting: Expected a index for argument3 (obj:index), got " + lua_print_value(argument3));
with (argument0) return lua_bool(place_meeting(argument1, argument2, argument3));

