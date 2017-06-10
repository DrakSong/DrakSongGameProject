/// @description TweenJiggle(Xperc, Yperc);
/// @function TweenJiggle
/// @param Xperc
/// @param  Yperc

var percX = argument0;
var percY = argument1;

//vx = round(vx);
xx = Step(xx,x+Xoff,abs(Xoff));
yy = Step(yy,y-Yoff,abs(Yoff));

if (Xoff != 0) Xoff*= -percX;
if (Yoff != 0) Yoff*= -percY;


