if instance_exists(oParPlayer){
//ViewX = oParPlayer.x;
var Long = (256*(1-0.618))/2;
var Px = oParPlayer.x
var V = 0;
var sp = abs(oParPlayer.vx)+(1.2)*1.618;//1.618;

if oParPlayer.facing = -1
{ 




{
x-=sp;
x =max(x, Px-Long);
//x = min(x,Px)
}


}

if oParPlayer.facing = 1
{

//else
{
x+=sp;
x =min(x, Px+Long)

}

}

if  (oParPlayer.x < __view_get( e__VW.XView, 0 )+Long*2)
{
x = min(x,Px);
}
if oParPlayer.x > __view_get( e__VW.XView, 0 )+256 - Long*2
{
x = max(x,Px)
}


x = MinMax(x,Long*2,room_width-2*Long);



ViewY = oParPlayer.y;
//x= ViewX
y= ViewY;
}
else 
{x=0 y=0}
