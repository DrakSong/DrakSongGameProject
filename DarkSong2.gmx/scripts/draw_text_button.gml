////////////////////////////////////////////////////////////
/// draw_text_button( x, y, text, pixel, color1, color2 ); //
// return mouse in(true) or out(false);                   //
////////////////////////////////////////////////////////////

var w,h,col,f;
/*********************************/
/**/ draw_set_halign(fa_left); /**/
/*********************************/

col=draw_get_color();

w=string_width(argument2);
h=string_height(argument2);

if(device_mouse_x(0)>argument0 &&
    device_mouse_x(0)<argument0+w &&
    device_mouse_y(0)>argument1 &&
    device_mouse_y(0)<argument1+h)
{
    draw_set_color(argument5);
    f=1;
}
else
{
    draw_set_color(argument4);
    f=0;
}


draw_roundrect(argument0-argument3,argument1-argument3,
        argument0+w+argument3,argument1+h+argument3,false);

draw_set_color(col);
draw_text(argument0,argument1,argument2);

return f;
