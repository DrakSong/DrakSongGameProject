texture_set_interpolation(true)

if surface_exists(surf)

{
surface_set_target(surf);
draw_clear_alpha(c_black, 1);
draw_set_blend_mode(bm_subtract);
with (oLight)
    {
    draw_sprite_ext(sprite_index, image_index, x/2 , y/2 , image_xscale, image_yscale, image_angle, c_white, 1);
	draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,( 0.618)/1, (0.618)/1, image_angle, c_white, 0.3);
    }
with(oLing)
{
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(0.618)/1, (0.618)/1, image_angle, c_white, 0.5);
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(1-0.618)/1, (1-0.618)/1, image_angle, c_white, 1);
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(1-0.618)/2, (1-0.618)/2, image_angle, c_white, 1);
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(1-0.618)/3, (1-0.618)/3, image_angle, c_white, 1);
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(1-0.618)/4, (1-0.618)/4, image_angle, c_white, 1);
draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,(0.618)/1, (0.618)/1, image_angle, c_white, 0.3);
}
    with (oParPlayer)
    {
     draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,( 0.618)/1, (0.618)/1, image_angle, c_white, 0.3);
  //  draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,( 0.618)/0.5, (0.618)/0.5, image_angle, c_white, 0.5);

    }
    
    with (oParEnemy)
    {
  //  draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,( 0.618)/3, (0.618)/3, image_angle, c_white,image_alpha);
    }
    with (oParNPC)
    {
   // draw_sprite_ext(sRoundLight, image_index, x/2 , y/2-8 ,( 0.618)/3, (0.618)/3, image_angle, c_white,image_alpha);
    }
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_surface_ext(surf, 0, 0, 2, 2, 0, c_white, 1);
}
else
{
surf = surface_create(room_width / 2, room_height / 2);
}
texture_set_interpolation(false)


