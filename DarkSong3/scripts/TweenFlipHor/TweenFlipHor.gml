/// @description TweenFlipHor(shift);
/// @function TweenFlipHor
/// @param shift

var shift = argument0;

if (xscale == scale*dir) dir*= -1;

xscale = Step(xscale, scale* dir, shift);



