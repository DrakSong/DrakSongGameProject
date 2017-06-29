/// @description  draw_sprite_part(sprite:index, subimg:number, left:number, top:number, width:number, height:number, x:number, y:number)
/// @function  draw_sprite_part
/// @param sprite:index
/// @param  subimg:number
/// @param  left:number
/// @param  top:number
/// @param  width:number
/// @param  height:number
/// @param  x:number
/// @param  y:number
if (argument_count != 8) return lua_show_error("draw_sprite_part: Expected 8 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_sprite_part: Expected a index for argument0 (sprite:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_sprite_part: Expected a number for argument1 (subimg:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_sprite_part: Expected a number for argument2 (left:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_sprite_part: Expected a number for argument3 (top:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_sprite_part: Expected a number for argument4 (width:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_sprite_part: Expected a number for argument5 (height:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_sprite_part: Expected a number for argument6 (x:number), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_sprite_part: Expected a number for argument7 (y:number), got " + lua_print_value(argument7));
draw_sprite_part(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);

