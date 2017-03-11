///old

//draw_self();

draw_sprite_miaobian_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)

image_speed = 1/10;

if place_meeting(x,y,oParPlayer) and instance_exists(oParPlayer)
{
draw_sprite(sUP,0,x,y-16-8-4+4*sin(current_time)/600)
}

if oParPlayer and instance_exists(oParPlayer)
{
if oParPlayer.x > x image_xscale = -1
if oParPlayer.x <= x image_xscale = 1

}



