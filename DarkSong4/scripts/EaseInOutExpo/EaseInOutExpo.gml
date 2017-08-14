/// @description  EaseInOutExpo(time,start,change,duration)
/// @function  EaseInOutExpo
/// @param time
/// @param start
/// @param change
/// @param duration

var _arg0 = 2*argument0/argument3;

if (_arg0 < 1) {
    return argument2 * 0.5 * power(2, 10 * --_arg0) + argument1;
}

return argument2 * 0.5 * (-power(2, -10 * --_arg0) + 2) + argument1;


