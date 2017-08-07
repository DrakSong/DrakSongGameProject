

GameGuiSetSize(256/1280)
//绘制上限
for (i=0; i<(MaxHP*0.618); i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sHP,1,20-12+20+i,8-2,1,1,0,c_white,1);
  
  
   //绘制现有
   for (i=0; i<HP*0.618; i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,1);//HP
};
   draw_sprite_ext(sHP,1,20-12+20,8-2,1,1,0,c_white,1);//HP
   
   
   
   
//这是绘制Ap的

for (i=0; i<MaxAP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sAP,1,20-12+20+i,8-2+5,1,1,0,c_white,1);

   //绘制现有
   for (i=0; i<AP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,1);
};
 draw_sprite_ext(sAP,1,20-12+20,8-2+5,1,1,0,c_white,1);
 
 

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
    case "斧头": SP = sAxe ; break;
	    case "小刀": SP = sDagger ; break;
		case"圣水":SP = sHolyWaterP;break;
		case"回旋镖":SP = sBoomerang;break;
	  default: SP = sNoSP;
		 
}
 
draw_sprite_ext(SP,0,20-12+2,8-2+2,1,1,0,c_white,1);//对应的武器

//后备箱
draw_sprite_ext(sUI2,0,18-12+20+2,8-2+9+1,0.5,0.5,0,c_white,1);
draw_sprite_ext(sUI2,1,18-12+20+2,8-2+9+1,0.5,0.5,0,c_white,0.4);
var SPB;SPB = sNoSP;
var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]
var BM = B[?"持有上限"]

draw_sprite_part_ext(sUI2,1,0,0,20,20*(BS/BM),18-12+20+2,8-2+9+1,0.5,0.5,c_white,1)

switch (BN)
{
    case "斧头": SP = sAxe ; break;
	    case "小刀": SP = sDagger ; break;
		case"圣水":SP = sHolyWater;break;
		case"回旋镖":SP = sBoomerang;break;
		 default: SP = sNoSP;
}


draw_sprite_part_ext(SP,1,0,0,20,20*(1),2+18-12+20+2,8+9+1,0.5,0.5,c_white,1)
