/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码
/*action_inherited()


//左上角副武器
if Mode = 0{

draw_sprite_ext(sprUi,10+OtherAtkMode,16-8,8-1,1,1,0,c_white,1);

}
//draw_text(128,0,vx)

*//// @description 在这里插入描述
// 你可以在这个编辑器中写入代码


//GuiSet(1);

GameGuiSetSize(256/1280)
var PX = 128

//绘制上限
for (i=0; i<(MaxHP*0.618); i+=1)
{
   draw_sprite_ext(sHP,0,PX+20-12+20+i,8-2,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sHP,1,PX+20-12+20+i,8-2,1,1,0,c_white,1);
  
  
   //绘制现有
   for (i=0; i<HP*0.618; i+=1)
{
   draw_sprite_ext(sHP,0,PX+20-12+20+i,8-2,1,1,0,c_white,1);//HP
};
   draw_sprite_ext(sHP,1,PX+20-12+20,8-2,1,1,0,c_white,1);//HP
   
   
   
   
//这是绘制Ap的

for (i=0; i<MaxMP*0.618; i+=1)
{
   draw_sprite_ext(sMP,0,PX+20-12+20+i,8-2+5,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sMP,1,PX+20-12+20+i,8-2+5,1,1,0,c_white,1);

   //绘制现有
   for (i=0; i<MP*0.618; i+=1)
{
   draw_sprite_ext(sMP,0,PX+20-12+20+i,8-2+5,1,1,0,c_white,1);
};
 draw_sprite_ext(sMP,1,PX+20-12+20,8-2+5,1,1,0,c_white,1);
 
 

//绘制现在所使用的
var YYX = YX ;
if TopYX YYX = YX+4;
draw_sprite_ext(sShitaYX,YYX,PX+20-12+8+2,8+15,1,1,0,c_white,1)
draw_sprite_ext(sUI2,0,PX+20-12,8-2,1,1,0,c_white,1);//界面框

GameGuiSetSize(1)