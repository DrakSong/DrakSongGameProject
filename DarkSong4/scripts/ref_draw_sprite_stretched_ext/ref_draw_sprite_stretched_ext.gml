/// @description  draw_sprite_stretched_ext(sprite:index, subimg:number, x:number, y:number, w:number, h:number, :color, alpha:number)
/// @function  draw_sprite_stretched_ext
/// @param sprite:index
/// @param  subimg:number
/// @param  x:number
/// @param  y:number
/// @param  w:number
/// @param  h:number
/// @param  :color
/// @param  alpha:number
if (argument_count != 8) return lua_show_error("draw_sprite_stretched_ext: Expected 8 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_sprite_stretched_ext: Expected a index for argument0 (sprite:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument1 (subimg:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument2 (x:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument3 (y:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument4 (w:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument5 (h:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_sprite_stretched_ext: Expected a color for argument6 (:color), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_sprite_stretched_ext: Expected a number for argument7 (alpha:number), got " + lua_print_value(argument7));
draw_sprite_stretched_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);

