/// @description  draw_set_halign(halign:int)
/// @function  draw_set_halign
/// @param halign:int
if (argument_count != 1) return lua_show_error("draw_set_halign: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_halign: Expected a int for argument0 (halign:int), got " + lua_print_value(argument0));
draw_set_halign(argument0);

