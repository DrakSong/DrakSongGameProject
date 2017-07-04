/// @description      Just a boring old draw Event for the gradient.
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sGradient,1,0,0,1,1,0,c_white,1);
draw_set_blend_mode(bm_normal);
draw_sprite_ext(sGBoy,0,320,320,1,1,0,c_white,1);

