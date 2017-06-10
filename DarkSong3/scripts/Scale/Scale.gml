/// @description Scale(percent,shift);
/// @function Scale
/// @param percent
/// @param shift
var perc = argument0*scale;
var shift = argument1;

xscale = Step(xscale,perc,shift);
yscale = Step(yscale,perc,shift);

