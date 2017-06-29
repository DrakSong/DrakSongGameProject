/// @description  place_snapped(self, hsnap:number, vsnap:number)
/// @function  place_snapped
/// @param self
/// @param  hsnap:number
/// @param  vsnap:number
if (argument_count != 3) return lua_show_error("place_snapped: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("place_snapped: Expected a number for argument1 (hsnap:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("place_snapped: Expected a number for argument2 (vsnap:number), got " + lua_print_value(argument2));
with (argument0) return lua_bool(place_snapped(argument1, argument2));

