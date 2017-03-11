draw_set_colour(c_blue);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);

if place_meeting(x,y,oParPlayer)
{
draw_sprite(sUP,0,x+8,y-8-4+4*sin(current_time)/600)
}


