/// @description Insert description here
// You can write your code in this editor


draw_set_font(Font)
draw_set_color(c_white);
texture_set_interpolation(true)


var Select;
Select[0] = global.MeunSelectMap[?"BGM音量"]+"  "+string(global.BGMvolume)
Select[1] = global.MeunSelectMap[?"SE音量"]+ "  "+string(global.SEvolume)



var i;

draw_set_halign(1)
draw_set_valign(1)
draw_sprite(sTopandDown,0,0,0)
draw_sprite(sTopandDown,0,0,720-87)

draw_text(1280/2,32,"-音量-")

for (i=0; i<2; i+=1)
{	if (Post==i)
	draw_set_alpha(0.72)
	else
	draw_set_alpha(0.32)

	draw_sprite(sBUll,0,1280/2,(87+40/2)+i*(169/3 ));
	draw_set_alpha(1);
	   draw_text_button(1280/2,(87+40/2)+i*(169/3),Select[i],Post==i);
	   draw_set_alpha(1);
};

draw_set_halign(0)
draw_set_valign(0)
texture_set_interpolation(false)