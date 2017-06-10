/// @description drawBox(color);
/// @function drawBox
/// @param color

draw_set_color(argument0);
draw_set_alpha(argument1);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);

draw_set_alpha(1);
draw_set_color(argument0);

