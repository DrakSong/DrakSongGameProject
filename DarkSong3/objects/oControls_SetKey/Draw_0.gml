
draw_set_color(c_black);
draw_set_alpha(.75);
draw_rectangle(0,0,room_width,room_height, false);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5),__view_get( e__VW.YView, 0 ) +(__view_get( e__VW.HView, 0 )*.15),string_hash_to_newline("PRESS ANY KEY"), 
                        scale, scale, 0 );


