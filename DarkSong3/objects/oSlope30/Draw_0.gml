/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_black);
if image_xscale>=1
draw_triangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,bbox_left,bbox_top,1)
else
draw_triangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,bbox_right,bbox_top,1)

