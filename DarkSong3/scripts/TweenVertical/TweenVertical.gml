/// @description TweenVertical(Yoff, shift);
/// @function TweenVertical
/// @param Yoff
/// @param  shift
var Yoff = argument0;
var shift = argument1;

//yy = y - (Yoff*size); //Tween upwards 
yy = Step(yy,y-(Yoff*size), shift);

