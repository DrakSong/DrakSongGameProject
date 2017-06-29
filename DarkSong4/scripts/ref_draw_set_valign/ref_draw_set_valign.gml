/// @description  draw_set_valign(valign:int)
/// @function  draw_set_valign
/// @param valign:int
if (argument_count != 1) return lua_show_error("draw_set_valign: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_set_valign: Expected a int for argument0 (valign:int), got " + lua_print_value(argument0));
draw_set_valign(argument0);

