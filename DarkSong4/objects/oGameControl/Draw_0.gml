/// @description Insert description here
// You can write your code in this editor


{

depth = -99999;
draw_set_color(c_blue)

var W = room_width div (320/2);
var H = room_height div (180/2);
for (a=0; a<W; a+=1)
{
    for (b=0; b<H; b+=1)
	{
	//横
	   draw_line(0,b*180/2,room_width,b*180/2)
	   //shu
	   draw_line(a*320/2,0,a*320/2,room_height)
	};
};


}

