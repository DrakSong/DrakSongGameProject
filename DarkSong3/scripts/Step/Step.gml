/// @description  Step(start, end, shift);
/// @function  Step
/// @param start
/// @param  end
/// @param  shift
var Start = argument0; var End = argument1; var Shift = argument2;

if (Start < End)
return min(Start + Shift, End); 
else
return max(Start - Shift, End);

