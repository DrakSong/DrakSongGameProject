///进入房间后跳转；
if tightRoomGoOn = true
{
if instance_exists(tightDR){
//跳转
var PX = 0;
switch(tightDRF)
{
case 2:break;//上
case 4:PX = 1;break;//左
case 6:PX = -1;break;//右
case 8:break;//下
}




x = tightDR.x+16*1.8*PX;
y = tightDR.bbox_bottom-1
}
//清理
tightRoomGoOn = false;
tightRM = -1;
tightDR = -1;
tightDRF=-1;
}