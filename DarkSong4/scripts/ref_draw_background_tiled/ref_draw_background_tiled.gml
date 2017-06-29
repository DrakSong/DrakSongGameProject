/// @description  draw_background_tiled(back:index, x:number, y:number)
/// @function  draw_background_tiled
/// @param back:index
/// @param  x:number
/// @param  y:number
if (argument_count != 3) return lua_show_error("draw_background_tiled: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_background_tiled: Expected a index for argument0 (back:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_background_tiled: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_background_tiled: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
draw_background_tiled(argument0, argument1, argument2);

