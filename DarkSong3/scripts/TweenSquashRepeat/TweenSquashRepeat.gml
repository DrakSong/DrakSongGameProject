/// @description TweenSquashRepeat(dir, offset, shift);  offset&shift in percents %
/// @function TweenSquashRepeat
/// @param dir
/// @param  offset
/// @param  shift

var dir = argument0;
var offset = (argument1* scale)* dir;
var shift = (argument2* scale);


xscale = Step(xscale, scale, shift);
yscale = Step(yscale, scale, shift);
if (xscale == scale){
xscale = scale+(offset);
yscale = scale-(offset);
}


