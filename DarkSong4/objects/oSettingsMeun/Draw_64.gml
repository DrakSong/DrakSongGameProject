/// @description Insert description here
// You can write your code in this editor


var Select;
Select[0] = global.MeunSelectMap[?"全屏"]+"  "+StringONorOFF(global.WindowFullscreen)
Select[1] = global.MeunSelectMap[?"窗口分辨率"]+ "  "+string(global.WindowsSize)+"X"
Select[2] = global.MeunSelectMap[?"Debug模式"]+ "  "+StringONorOFF(debug_mode)
Select[3] = global.MeunSelectMap[?"语言"]+ "  "+string( ds_list_find_value(global.LanguageList,global.Language))





draw_set_font(Font)
draw_set_color(c_white);
texture_set_interpolation(true)







draw_set_halign(1)
draw_set_valign(1)
draw_sprite(sTopandDown,0,0,0)
draw_sprite(sTopandDown,0,0,720-87)

draw_text(1280/2,32,"-画面-")
//写返回用的

	

for (i=0; i<4; i+=1)
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