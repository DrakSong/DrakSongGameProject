/// @description TweenJiggleVer(slow down perc);
/// @function TweenJiggleVer
/// @param slow down perc

var perc = argument0;

//vx = round(vx);
yy = Step(yy,y-Yoff,abs(Yoff));

if (Yoff != 0) Yoff*= -perc;

