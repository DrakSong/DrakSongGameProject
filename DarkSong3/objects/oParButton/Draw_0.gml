

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(color);
draw_set_font(font);
draw_set_alpha(alpha);
boundBox();
draw_text_transformed(xx,yy,string_hash_to_newline(text),xscale* scale,yscale* scale,ang);
draw_set_alpha(1); //reset


