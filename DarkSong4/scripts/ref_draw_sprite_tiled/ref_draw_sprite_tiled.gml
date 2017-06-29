/// @description  draw_sprite_tiled(sprite:index, subimg:number, x:number, y:number)
/// @function  draw_sprite_tiled
/// @param sprite:index
/// @param  subimg:number
/// @param  x:number
/// @param  y:number
if (argument_count != 4) return lua_show_error("draw_sprite_tiled: Expected 4 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_sprite_tiled: Expected a index for argument0 (sprite:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_sprite_tiled: Expected a number for argument1 (subimg:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_sprite_tiled: Expected a number for argument2 (x:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_sprite_tiled: Expected a number for argument3 (y:number), got " + lua_print_value(argument3));
draw_sprite_tiled(argument0, argument1, argument2, argument3);

