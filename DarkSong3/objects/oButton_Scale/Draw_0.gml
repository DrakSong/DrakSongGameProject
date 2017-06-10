

//event_inherited();

draw_set_halign(halign);
draw_set_valign(valign);
draw_set_colour(color);
draw_set_font(font);
draw_set_alpha(alpha);
boundBox();
draw_text_transformed(xx,yy,string_hash_to_newline(string(text) + string(text2)),xscale* scale,yscale* scale,ang);

