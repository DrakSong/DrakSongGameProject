{
	///绘制背景
GuiSet(1024/256);
var _Y, van, fuck;
van = (0.12450 / 4) * (sin(current_time / 450));
_Y = (576 * (1 - 0.618));
fuck = (current_time / 450) * 6;
draw_set_colour(c_black)
draw_set_alpha(1-0.618)
draw_clear_alpha(c_black,0)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
texture_set_interpolation(false)
///Titl
GuiSet(1)
draw_set_colour(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_font(fWindow)
if _Mode = "Title"
{ var _Muen;
_Muen[0] = "开始游戏"
_Muen[1] = "设置"
_Muen[2] = "退出"
draw_set_halign(fa_left)
var I = 64/8
GuiSet(I);
for (i=0; i<3; i+=1)
{
   DrawSelect(0,(64 + 12*i)*I,_Muen[i],_Sel=i);
};
}
///Option
if _Mode = "Option"
{ var _Muen;
  var Set = global.GameInfo[?"设置"];
_Muen[0] = "BGM音量"+ string(Set[?"BGM音量"]);
_Muen[1] = "音效音量"+ string(Set[?"音效音量"]);
_Muen[2] = "窗口倍数"+ string(Set[?"窗口倍数"]);
_Muen[3] = "返回"
draw_set_halign(fa_left)
var I = 64/8
GuiSet(I);
for (i=0; i<4; i+=1)
{
   DrawSelect(0,(64 + 12*i)*I,_Muen[i],_Sel=i);
};
GuiSet(1);
}
draw_set_colour(c_white)
}
