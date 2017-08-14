/// @description  EaseInBack(time,start,change,duration)
/// @function  EaseInBack
/// @param time
/// @param start
/// @param change
/// @param duration

var _s = 1.70158;
_arg0 = argument0/argument3;
return argument2 * _arg0 * _arg0 * ((_s + 1) * _arg0 - _s) + argument1;


