
draw_set_font(global.fonts[1]);
draw_set_halign(fa_center);
draw_set_color(c_white);
ang += 0.5*dir;
if (ang>5)||(ang<-5) dir*= -1;
draw_text_transformed(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5), __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* 0.15)+ ang/2,
string_hash_to_newline("SIMPLE PAUSE MENU v2"), 1.5,2, 0 );

draw_text_transformed(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5), __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* 0.25)+ ang,
string_hash_to_newline("Use Mouse or ArrowKeys+ Enter"), 1,1, 0);
 
//draw_set_halign(fa_left);
draw_text_transformed(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5),__view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* 0.45), string_hash_to_newline("PRESS ESC"),
1.5,1.5, ang );



