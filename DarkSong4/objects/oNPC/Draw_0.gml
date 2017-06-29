///draw_sprite_outlined(sprite, subimg, x, y, xscale, yscale, ang, colour, outline_colour)
draw_sprite_outlined(sprite_index,image_index,x,y,1,1,0,c_white,c_black)

image_speed = 1/10;

if place_meeting(x,y,oParPlayer) and instance_exists(oParPlayer)
{
	draw_sprite(sKeyUp,0,x,y-16-8-4+4*sin(current_time)/600)
}

if instance_exists(oParPlayer)
{
	if oParPlayer.x > x image_xscale =-1
	if oParPlayer.x <= x image_xscale = 1

}



