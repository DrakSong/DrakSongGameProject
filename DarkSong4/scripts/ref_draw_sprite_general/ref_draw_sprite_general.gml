/// @description  draw_sprite_general(sprite:index, subimg:number, left:number, top:number, width:number, height:number, x:number, y:number, xscale:number, yscale:number, rot:number, c1:color, c2:color, c3:color, c4:color, alpha:number)
/// @function  draw_sprite_general
/// @param sprite:index
/// @param  subimg:number
/// @param  left:number
/// @param  top:number
/// @param  width:number
/// @param  height:number
/// @param  x:number
/// @param  y:number
/// @param  xscale:number
/// @param  yscale:number
/// @param  rot:number
/// @param  c1:color
/// @param  c2:color
/// @param  c3:color
/// @param  c4:color
/// @param  alpha:number
if (argument_count != 16) return lua_show_error("draw_sprite_general: Expected 16 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_sprite_general: Expected a index for argument0 (sprite:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_sprite_general: Expected a number for argument1 (subimg:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_sprite_general: Expected a number for argument2 (left:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_sprite_general: Expected a number for argument3 (top:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_sprite_general: Expected a number for argument4 (width:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_sprite_general: Expected a number for argument5 (height:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_sprite_general: Expected a number for argument6 (x:number), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_sprite_general: Expected a number for argument7 (y:number), got " + lua_print_value(argument7));
if !(is_real(argument8) || is_int64(argument8)) return lua_show_error("draw_sprite_general: Expected a number for argument8 (xscale:number), got " + lua_print_value(argument8));
if !(is_real(argument9) || is_int64(argument9)) return lua_show_error("draw_sprite_general: Expected a number for argument9 (yscale:number), got " + lua_print_value(argument9));
if !(is_real(argument10) || is_int64(argument10)) return lua_show_error("draw_sprite_general: Expected a number for argument10 (rot:number), got " + lua_print_value(argument10));
if !(is_real(argument11) || is_int64(argument11)) return lua_show_error("draw_sprite_general: Expected a color for argument11 (c1:color), got " + lua_print_value(argument11));
if !(is_real(argument12) || is_int64(argument12)) return lua_show_error("draw_sprite_general: Expected a color for argument12 (c2:color), got " + lua_print_value(argument12));
if !(is_real(argument13) || is_int64(argument13)) return lua_show_error("draw_sprite_general: Expected a color for argument13 (c3:color), got " + lua_print_value(argument13));
if !(is_real(argument14) || is_int64(argument14)) return lua_show_error("draw_sprite_general: Expected a color for argument14 (c4:color), got " + lua_print_value(argument14));
if !(is_real(argument15) || is_int64(argument15)) return lua_show_error("draw_sprite_general: Expected a number for argument15 (alpha:number), got " + lua_print_value(argument15));
draw_sprite_general(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15);
