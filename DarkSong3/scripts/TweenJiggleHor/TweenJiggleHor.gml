/// @description TweenJiggleHor(slow down perc);
/// @function TweenJiggleHor
/// @param slow down perc

var perc = argument0;

//vx = round(vx);
xx = Step(xx,x+Xoff,abs(Xoff));

if (Xoff != 0) Xoff*= -perc;

