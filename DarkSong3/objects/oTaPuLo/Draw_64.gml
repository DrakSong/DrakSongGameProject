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
/*
GuiSet(3)
draw_set_font(fWindow16)
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[?"数量"]
if  A[?"数量"]>0 or  A[?"数量"] = -1
{
draw_text(0,32,"正在使用的物品A 名字:"+string(AN)+" 数量:"+string(AS))
}
var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]

if  B[?"数量"]>0 or  B[?"数量"] = -1
{
draw_text(0,64,"在后备箱的物品B 名字:"+string(BN)+" 数量:"+string(BS))
}
GuiSet(1)
*/
//绘制上限
for (i=0; i<MaxHP*0.618; i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,0.416);//HP
};
   draw_sprite_ext(sHP,1,20-12+20+i,8-2,1,1,0,c_white,1);//HP
  
   //绘制现有
   for (i=0; i<HP*0.618; i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,1);//HP
};
   draw_sprite_ext(sHP,1,20-12+20,8-2,1,1,0,c_white,1);//HP
   
//这是绘制Ap的

for (i=0; i<MaxAP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,0.416);//HP
};
   draw_sprite_ext(sAP,1,20-12+20+i,8-2+5,1,1,0,c_white,1);//HP
    
   //绘制现有
   for (i=0; i<AP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,1);//HP
};
 draw_sprite_ext(sAP,1,20-12+20,8-2+5,1,1,0,c_white,1);//HP
//绘制现在所使用的
draw_sprite_ext(sUI2,0,20-12,8-2,1,1,0,c_white,1);//界面框
draw_sprite_ext(sUI2,1,20-12,8-2,1,1,0,c_white,0.4);//界面框
var SPA;SPA = sNoSP;
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[?"数量"]
var AM = A[?"持有上限"]
draw_sprite_part(sUI2,1,0,0,20,20*(AS/AM),20-12,8-2);//界面框
var SP;
//SP = SPA
switch (AN)
{
    case "斧头": SP = sFT ; break;
	    case "小刀": SP = sBS ; break;
	  default: SP = sNoSP;
		 
}
 
draw_sprite_ext(SP,0,20-12+2,8-2+2,1,1,0,c_white,1);//对应的武器

//后备箱
draw_sprite_ext(sUI2,0,18-12+20,8-2+9+1,0.5,0.5,0,c_white,1);
draw_sprite_ext(sUI2,1,18-12+20,8-2+9+1,0.5,0.5,0,c_white,0.4);
var SPB;SPB = sNoSP;
var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]
var BM = B[?"持有上限"]

draw_sprite_part_ext(sUI2,1,0,0,20,20*(BS/BM),18-12+20,8-2+9+1,0.5,0.5,c_white,1)

switch (BN)
{
    case "斧头": SP = sFT ; break;
	    case "小刀": SP = sBS ; break;
		 default: SP = sNoSP;
}
draw_sprite_ext(SP,0,18-12+20+1,8-2+9+2,0.5,0.5,0,c_white,1);


draw_set_color(c_black)
draw_set_font(fWindow16)
draw_text_ext_transformed(20-12+2,8-2+2+20,AS,3,32,0.5,0.5,1)
