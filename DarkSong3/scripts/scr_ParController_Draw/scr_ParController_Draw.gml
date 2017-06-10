/// @description scr_ParController_Draw( );
/// @function scr_ParController_Draw
/// @param  

draw_set_color(c_black);
draw_set_alpha(.8);
draw_rectangle(0,0,room_width,room_height, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5),__view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* 0.1), string_hash_to_newline(text),
                      scale, scale, 0);

// Draw Rectangle to cover text
if (global.buttonId != noone )
draw_rectangle( 0, global.buttonId.y-buttonHeight/2, __view_get( e__VW.WView, 0 ), global.buttonId.y+buttonHeight/2, true );

draw_set_halign( fa_left );
draw_text(20, 20, string_hash_to_newline("size:"+string(size)) );
draw_text(20, 40, string_hash_to_newline("pos:"+string(global.buttonPos)) );

