///绘制背景

texture_set_interpolation(true)
display_set_gui_size(1024,576);
var Xs = 1//256/1024;
var Ys = 1//Xs;
if surface_exists(surf)
{
//view_surface_id[0] = surf
surface_set_target(surf);

//draw_set_blend_mode(bm_subtract);
var _Y, van, fuck;
van = (0.12450 / 4) * (sin(current_time / 450));
_Y = (576 * (1 - 0.618));
fuck = (current_time / 450) * 6;
draw_clear_alpha(c_black, 0);
//draw_set_blend_mode(bm_normal);
//圆环
;

//draw_set_blend_mode(bm_subtract);
draw_set_colour(c_white)
draw_set_alpha(1-0.618)
//draw_lensflare(1024/2,_Y,0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))
//

draw_set_blend_mode(bm_add);
draw_set_alpha(1)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.5 + van, 1.5 + van, -fuck, c_white, 10);
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
draw_sprite_ext(sprO, 0, 1024 / 2, _Y, 1.3 + van, 1.3 + van, fuck * 2, c_white, 10)
draw_set_blend_mode(bm_normal);

draw_set_alpha(1-0.618)


//draw_set_blend_mode(bm_normal);






surface_reset_target();

draw_surface_ext(surf, 0, 0, Xs,Ys, 0, c_white, 1);

}
else
{
surf = surface_create(1024 , 576);
}
_Y = (576 * (1 - 0.618));
//draw_lensflare(1024/2,_Y,0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))
//draw_lensflare(256/2,144*(1-0.618),0,Xs,Ys,1,choose(3,4,5),choose(1,1.2,1.5))
texture_set_interpolation(false)
GuiSet(1);


///Title
GuiSet(1)
draw_set_font(fWindow)
draw_set_colour(c_white)
if _Mode = "Title"
{ var _Muen;
_Muen[0] = "读取"
_Muen[1] = "新游戏"
_Muen[2] = "设置"
_Muen[3] = "退出"
draw_set_halign(fa_left)
for (i=0; i<4; i+=1)
{
   DrawSelect(0,80 + 12*i,_Muen[i],_Sel=i);
};

}
 


///LoadGame

if _Mode = "LoadGame"
{
{ var _Muen;
  var Set = global.GameInfo[?"记录"];
  var Set  = Set[?"存档使用"];
  for (i=0; i<3; i+=1)
  {   var L;L[i] = string(i+1);
    if Set[?L[i]]{
      _Muen[i] = "存档"+string(i)+string(Set[?L[i]])}
      else
      {_Muen[i]="无存档"}
      
  };
  
  
  
  

_Muen[3] = "返回"
draw_set_halign(fa_left)
for (i=0; i<4; i+=1)
{
   DrawSelect(0,80 + 12*i,_Muen[i],_Sel=i);
};

}
 


}

///Option
GuiSet(1)
draw_set_font(fWindow)
draw_set_colour(c_white)
if _Mode = "Option"
{ var _Muen;
  var Set = global.GameInfo[?"设置"];
_Muen[0] = "BGM音量"+ string(Set[?"BGM音量"]);
_Muen[1] = "音效音量"+ string(Set[?"音效音量"]);
_Muen[2] = "窗口倍数"+ string(Set[?"窗口倍数"]);
_Muen[3] = "返回"
draw_set_halign(fa_left)
for (i=0; i<4; i+=1)
{
   DrawSelect(0,80 + 12*i,_Muen[i],_Sel=i);
};

}
 


