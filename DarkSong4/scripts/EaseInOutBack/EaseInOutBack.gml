/// @description  EaseInOutBack(time,start,change,duration)
/// @function  EaseInOutBack
/// @param time
/// @param start
/// @param change
/// @param duration

var _s = 1.70158;
var _arg0 = argument0/argument3*2

if (_arg0 < 1)
{
    _s *= 1.525;
    return argument2 * 0.5 * (_arg0 * _arg0 * ((_s + 1) * _arg0 - _s)) + argument1;
}

_arg0 -= 2;
_s *= 1.525

return argument2 * 0.5 * (_arg0 * _arg0 * ((_s + 1) * _arg0 + _s) + 2) + argument1;

