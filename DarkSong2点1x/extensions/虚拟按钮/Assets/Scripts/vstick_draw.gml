///vstick_draw(vstick_id)
//Handles the drawing of the virtual joysticks. To be placed in the Draw GUI event.
var defalph;
defalph=draw_get_alpha();
if (vstick[argument0,13]==noone)
{
    draw_set_alpha(defalph/2);
    draw_circle(vstick[argument0,3],vstick[argument0,4],vstick[argument0,2],0);
} else
{
    draw_sprite_ext(vstick[argument0,13],0,vstick[argument0,3],vstick[argument0,4],1,1,0,c_white,defalph);
}
if (vstick[argument0,14]==noone)
{
    draw_set_alpha(defalph/2+vstick[argument0,6]*(defalph/2));
    draw_circle(vstick[argument0,3]+vstick[argument0,11]*vstick[argument0,2],vstick[argument0,4]+vstick[argument0,12]*vstick[argument0,2],vstick[argument0,2]*0.3333,0);
} else
{
    draw_sprite_ext(vstick[argument0,14],0,vstick[argument0,3]+vstick[argument0,11]*vstick[argument0,2],vstick[argument0,4]+vstick[argument0,12]*vstick[argument0,2],1,1,0,c_white,defalph);
}
draw_set_alpha(defalph);