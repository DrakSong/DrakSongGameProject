var OBJ = oTaPuLo
if instance_exists(OBJ){
//ViewX = oParPlayer.x;
var Long = (320*(1-0.618))/2;
var Px = OBJ.x
var V = 0;
var sp = abs(OBJ.vx)+(0.8)*1.618;//1.618;

//x = oParPlayer.x div (320/2) *320/2

//y = oParPlayer.y div(180/2)*180/2

if keyboard_check(vk_pageup)
Size+=0.01

if keyboard_check(vk_pagedown)
Size-=0.01
//GameViewSet(0,1,Size,oParPlayer)
//GameViewSet(0,1,Size,oParPlayer)



if OBJ.facing = -1
{ 

{
x-=sp;
x =max(x, Px-Long);
//x = min(x,Px)
}


}

if OBJ.facing = 1
{

//else
{
x+=sp;
x =min(x, Px+Long)

}

}

if  (OBJ.x < __view_get( e__VW.XView, 0 )+Long*2)
{
x = min(x,Px);
}
if OBJ.x > __view_get( e__VW.XView, 0 )+256 - Long*2
{
x = max(x,Px)
}


x = MinMax(x,Long*2,room_width-2*Long);



ViewY = OBJ.y;
//x= ViewX
y= ViewY;
}
else 
{x=0 y=0}
