///绘制主体

        //draw_self();/// 画精灵
   //绘制无敌效果
if INV or  state  = ROLL 
{var C = c_white}
 else
{var C = c_black}
// if  STI = 
 
 
 //判断僵直
    {
if (onGround){
   if Outlined
    draw_sprite_outlined(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, C); 
	else
	draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, 1)
      }
else
 {
 if Outlined
   draw_sprite_outlined(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, C);
   else
   draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, 1);
   
   }
   
}    
   
    
 // live_call("draw", self);
//draw_text(x,y,"x")
   


///绘制攻击区域
/*

if oGameSystem.Debug
if (sprite_index == sAtk  ) and  AtkBoxCol != c_white
{
    draw_set_colour(AtkBoxCol)
     draw_rectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD,1);
     AtkBoxCol = c_white
}

