/// @description  EaseInOutQuart(time,start,change,duration)
/// @function  EaseInOutQuart
/// @param time
/// @param start
/// @param change
/// @param duration

var _arg0 = 2*argument0/argument3;

if (_arg0 < 1) {
    return argument2 * 0.5 * power(_arg0, 4) + argument1;
}

return argument2 * -0.5 * (power(_arg0 - 2, 4) - 2) + argument1;

