
draw_set_font(Font)
draw_set_color(c_white);
texture_set_interpolation(true)


var Select;
Select[0] = global.MeunSelectMap[?"设置"]
Select[1] = global.MeunSelectMap[?"声音"]
Select[2] = global.MeunSelectMap[?"键位控制"]
Select[3] = "               "+string(chr(global.kJump))+"离开"
var i;

draw_set_halign(1)
draw_set_valign(1)
draw_sprite(sTopandDown,0,0,0)
draw_sprite(sTopandDown,0,0,720-87)

draw_text(1280/2,32,"-设置-")
//写返回用的
if (Post==3)
	draw_set_alpha(0.72)
	else
	draw_set_alpha(0.32)
	draw_sprite(sBUll,0,0,(500)+2*(169/3))
	
  draw_text_button(0,(500)+2*(169/3),Select[3],Post==3)
for (i=0; i<3; i+=1)
{	if (Post==i)
	draw_set_alpha(0.72)
	else
	draw_set_alpha(0.32)
	draw_sprite(sBUll,0,1280/2,(87+40/2)+i*(40 ));
	draw_set_alpha(1);
	   draw_text_button(1280/2,(87+40/2)+i*(40),Select[i],Post==i);
	   draw_set_alpha(1);
};

draw_set_halign(0)
draw_set_valign(0)
texture_set_interpolation(false)