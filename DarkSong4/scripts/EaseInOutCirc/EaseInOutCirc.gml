/// @description  EaseInOutCirc(time,start,change,duration)
/// @function  EaseInOutCirc
/// @param time
/// @param start
/// @param change
/// @param duration

var _arg0 = 2*argument0/argument3;

if (_arg0 < 1){
    return argument2 * 0.5 * (1 - sqrt(1 - _arg0 * _arg0)) + argument1;
}

_arg0 -= 2;
return argument2 * 0.5 * (sqrt(1 - _arg0 * _arg0) + 1) + argument1;


