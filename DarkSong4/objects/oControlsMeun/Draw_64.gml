/// @description Insert description here
// You can write your code in this editor


var TextK;
TextK[0] = global.MeunSelectMap[?"上"]+"  :  "+KeyChr(global.kUp);
TextK[1] = global.MeunSelectMap[?"下"]+"  :  "+KeyChr(global.kDown);
TextK[2] = global.MeunSelectMap[?"左"]+"  :  "+KeyChr(global.kLeft);
TextK[3] = global.MeunSelectMap[?"右"]+"  :  "+KeyChr(global.kRight);
TextK[4] = global.MeunSelectMap[?"攻击"]+"  :  "+KeyChr(global.kAttack);
TextK[5] = global.MeunSelectMap[?"跳跃"]+"  :  "+KeyChr(global.kJump);
TextK[6] = global.MeunSelectMap[?"切换"]+"  :  "+KeyChr(global.kChange);
TextK[7] = global.MeunSelectMap[?"翻滚"]+"  :  "+KeyChr(global.kRoll);



/// @description Insert description here
// You can write your code in this editor





draw_set_font(Font)
draw_set_color(c_white);
texture_set_interpolation(true)






LK = "               "+string(chr(global.kJump))+"离开"
RK  = "Home复位"
var i;

draw_set_halign(1)
draw_set_valign(1)
draw_sprite(sTopandDown,0,0,0)
draw_sprite(sTopandDown,0,0,720-87)

draw_text(1280/2,32,"-画面-")
//写返回用的

	draw_set_alpha(0.72)
	draw_sprite(sBUll,0,0,(500)+2*(169/3))
	draw_text_button(0,(500)+2*(169/3),LK,false)

for (i=0; i<8; i+=1)
{	if (Post==i)
	draw_set_alpha(0.72)
	else
	draw_set_alpha(0.32)

	draw_sprite(sBUll,0,1280/2,(87+40/2)+i*(169/3 ));
	draw_set_alpha(1);
	   draw_text_button(1280/2,(87+40/2)+i*(169/3),TextK[i],Post==i);
	   draw_set_alpha(1);
};

draw_set_halign(0)
draw_set_valign(0)
texture_set_interpolation(false)