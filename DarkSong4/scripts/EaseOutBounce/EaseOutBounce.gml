/// @description  EaseOutBounce(time,start,change,duration)
/// @function  EaseOutBounce
/// @param time
/// @param start
/// @param change
/// @param duration

var _arg0 = argument0/argument3;

if (_arg0 < 1/2.75)
{
    return argument2 * 7.5625 * _arg0 * _arg0 + argument1;
}
else
if (_arg0 < 2/2.75)
{
    _arg0 -= 1.5/2.75;
    return argument2 * (7.5625 * _arg0 * _arg0 + 0.75) + argument1;
}
else
if (_arg0 < 2.5/2.75)
{
    _arg0 -= 2.25/2.75;
    return argument2 * (7.5625 * _arg0 * _arg0 + 0.9375) + argument1;
}
else
{
    _arg0 -= 2.625/2.75;
    return argument2 * (7.5625 * _arg0 * _arg0 + 0.984375) + argument1;
}



