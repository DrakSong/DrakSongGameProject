/// @description  draw_sprite_pos(sprite:index, subimg:number, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number, x4:number, y4:number, alpha:number)
/// @function  draw_sprite_pos
/// @param sprite:index
/// @param  subimg:number
/// @param  x1:number
/// @param  y1:number
/// @param  x2:number
/// @param  y2:number
/// @param  x3:number
/// @param  y3:number
/// @param  x4:number
/// @param  y4:number
/// @param  alpha:number
if (argument_count != 11) return lua_show_error("draw_sprite_pos: Expected 11 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_sprite_pos: Expected a index for argument0 (sprite:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_sprite_pos: Expected a number for argument1 (subimg:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_sprite_pos: Expected a number for argument2 (x1:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_sprite_pos: Expected a number for argument3 (y1:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_sprite_pos: Expected a number for argument4 (x2:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_sprite_pos: Expected a number for argument5 (y2:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_sprite_pos: Expected a number for argument6 (x3:number), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_sprite_pos: Expected a number for argument7 (y3:number), got " + lua_print_value(argument7));
if !(is_real(argument8) || is_int64(argument8)) return lua_show_error("draw_sprite_pos: Expected a number for argument8 (x4:number), got " + lua_print_value(argument8));
if !(is_real(argument9) || is_int64(argument9)) return lua_show_error("draw_sprite_pos: Expected a number for argument9 (y4:number), got " + lua_print_value(argument9));
if !(is_real(argument10) || is_int64(argument10)) return lua_show_error("draw_sprite_pos: Expected a number for argument10 (alpha:number), got " + lua_print_value(argument10));
draw_sprite_pos(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);

