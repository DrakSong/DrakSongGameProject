
	///绘制背景
	
//GameGuiSetSize(1024/1280);
texture_set_interpolation(true)
var _Y, van, fuck;
van = (0.12450 / 4) * (sin(current_time / 450));
_Y = 275
fuck = (current_time / 450) * 6;
//draw_set_colour(c_black)
//draw_set_alpha(1-0.618)
//draw_clear_alpha(c_black,0)
var A = 1;
draw_sprite_ext(sprO, 0, 1280 / 2, _Y, 1.3 + van, 1.3 + van, -fuck, c_white, A);
draw_sprite_ext(sprO, 0, 1280 / 2, _Y, 1.3 + van, 1.3 + van, -fuck, c_white, A);
draw_sprite_ext(sprO, 0, 1280 / 2, _Y, 1.1 + van, 1.1 + van, fuck * 2, c_white, A)
draw_sprite_ext(sprO, 0, 1280 / 2, _Y, 1.1 + van, 1.1 + van, fuck * 2, c_white, A)
draw_sprite_ext(sLogo, 0, 1280 / 2, 400, 1,1,0 ,c_white, 10)
texture_set_interpolation(false)

 GameGuiSetSize(1);
 
draw_set_font(Font)
draw_set_color(c_white);


var Select;
Select[0] = global.MeunSelectMap[?"新游戏"]//假如读取到了存档 就变成继续游戏
//Select[1] = global.MeunSelectMap[?"继续游戏"]
Select[1] = global.MeunSelectMap[?"游戏设置"]
Select[2] = global.MeunSelectMap[?"退出"]
var i;
draw_set_halign(1)
draw_set_valign(1)
texture_set_interpolation(true)
for (i=0; i<3; i+=1)
{
	
if  (Post==i){
	draw_set_alpha(0.72)
	draw_sprite(sBUll,0,1280/2,(500)+i*(169/3 ))}
	//else
	//draw_set_alpha(0.32)
	
	
	
	
	draw_set_alpha(1)
	
	   draw_text_button(1280/2,(500)+i*(169/3),Select[i],Post==i)
	   
	   draw_set_alpha(1)
	  
	   
};
draw_set_halign(0)
draw_set_valign(0)
texture_set_interpolation(false)