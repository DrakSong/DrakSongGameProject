/// @description  EaseInCirc(time,start,change,duration)
/// @function  EaseInCirc
/// @param time
/// @param start
/// @param change
/// @param duration

var _arg0 = argument0/argument3;
return argument2 * (1 - sqrt(1 - _arg0 * _arg0)) + argument1;

