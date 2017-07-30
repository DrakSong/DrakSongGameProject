/// @description Insert description here
// You can write your code in this editor
action_inherited();


if attacking and debug_mode{
draw_set_color(c_red)
//fuck
draw_rectangle(AtkBoxL,AtkBoxD,AtkBoxR,AtkBoxU,1)
}


if  keyboard_check_pressed(ord("A"))
{

	  OldYX = YX; //记录一下 检测条件的符合
	  OldTopYX = TopYX;
	  }
	  
	  if keyboard_check_released(ord("A"))
	  {//这个是处理条件不合适的机制
	//  YX = OldYX;
	  //TopYX = OldTopYX;
	  
	  }

if  keyboard_check(ord("A"))
{
kLeft        = false;
kRight       = false;
kUp          = false;
kDown        = false;

kJump        = false;

kAction      = false;



//draw_sprite_ext(sShitaYX,0,x,y-32,1,1,0,c_white,1)



var UPS = 0.5;
var LeftS =0.5;
var DownS = 0.5;
var RightS =0.5;

var key;
 key[0]= global.kUp;
key [1] = global.kLeft
key[2] = global.kDown
key[3]= global.kRight

  
for (i=0; i<4; i+=1)
{
   if keyboard_check_pressed(key[i]) 
{	 if  YX = i

  {
	  
	  TopYX ^= true} 
	
	 
	  YX = i
  
  }
};




switch (YX)
{
    case 0: UPS =  1; break;
	case 1: LeftS =   1; break;
	case 2: DownS = 1; break;
	case 3: RightS = 1; break;
   
}




//kControl = false

var top = 0;
if TopYX = true top = 4

//上

draw_sprite_ext(sShitaYX,0+top,x,y-16-8,UPS,UPS,0,c_white,1)

//左
draw_sprite_ext(sShitaYX,1+top,x-16,y-8,LeftS,LeftS,90,c_white,1)
//下
draw_sprite_ext(sShitaYX,2+top,x,y+16-8,DownS,DownS,180,c_white,1)
//右
draw_sprite_ext(sShitaYX,3+top,x+16,y-8,RightS,RightS,270,c_white,1)



}
