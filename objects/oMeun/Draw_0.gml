draw_set_alpha(1);
//draw_sprite(sTitleLogo,image_index,0,0)


/*ViewSet(0,true,1,false);

texture_set_interpolation(true)

var Xs = 256/1024;
var Ys = Xs;
if surface_exists(surf)
{
//view_surface_id[0] = surf
surface_set_target(surf);

draw_set_blend_mode(bm_subtract);
var _Y, van, fuck;
van = (0.12450 / 4) * (sin(current_time / 450));
_Y = (576 * (1 - 0.618));
fuck = (current_time / 450) * 6;
draw_clear_alpha(c_black, 0.618);

//圆环
;

draw_set_blend_mode(bm_subtract);
draw_set_colour(c_white)
draw_set_alpha(1-0.618)
draw_lensflare(1024/2,_Y,0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))
draw_set_blend_mode(bm_normal);

draw_set_blend_mode(bm_add);
draw_set_alpha(1)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
draw_set_blend_mode(bm_normal);

draw_set_alpha(1-0.618)
draw_lensflare(1024/2,_Y,0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))

draw_set_blend_mode(bm_normal);
surface_reset_target();


draw_surface_ext(surf, 0, 0, Xs,Ys, 0, c_white, 1);
}
else
{
surf = surface_create(1024 , 576);
}
//draw_lensflare(256/2,144*(1-0.618),0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))
texture_set_interpolation(false)



/* */
/*  */
