/// @description  EaseOutBack(time,start,change,duration)
/// @function  EaseOutBack
/// @param time
/// @param start
/// @param change
/// @param duration

var _s = 1.70158;
var _arg0 = argument0/argument3 - 1;
return argument2 * (_arg0 * _arg0 * ((_s + 1) * _arg0 + _s) + 1) + argument1;


