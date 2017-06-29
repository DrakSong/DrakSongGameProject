/// @description  cycle(value, min, max)
/// @function  cycle
/// @param value
/// @param  min
/// @param  max
var delta = argument2 - argument1;
var result = (argument0 - argument1) % delta;
if (result < 0) result += delta;
return result + argument1;
