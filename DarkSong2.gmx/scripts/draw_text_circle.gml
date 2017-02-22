///draw_text_circle(x,y,str,radius,charangle,firstchardir)
///Created by Andrew McCluskey (nalgames.com)

var originx=argument0; //Where you want the centre of the circle to be (x coordinate)
var originy=argument1; //Where you want the centre of the circle to be (y coordinate)
var radius=argument3; //How far from the central point you want the text to be drawn
var facing=90+argument4; //Whether you want the text to face outwards (90) or inwards (270)
var initdir=argument5; //The initial direction of the first character in the text string
var msg=argument2; //What you want the circle text to say. Leave a space at the end of the string for clarity.

//Do not alter anything past this point.

draw_set_halign(fa_center);
draw_set_valign(fa_center);

s=string_length(msg)

for(i=1;i<=s;i+=1)
{
    draw_text_transformed(originx+lengthdir_x(radius,((i/s)*360)+initdir)+2,originy+lengthdir_y(radius,((i/s)*360)+initdir)+2,string_copy(msg,i,1),1,1,((i/s)*360)+facing+initdir);
}
