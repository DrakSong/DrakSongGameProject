/// @description  EaseInElastic(time,start,change,duration)
/// @function  EaseInElastic
/// @param time
/// @param start
/// @param change
/// @param duration

var _s = 1.70158;
var _p = 0;
var _a = argument2;

var _arg0 = argument0;

if (_arg0 == 0 || _a == 0) {
    return argument1; 
}

_arg0 /= argument3;

if (_arg0 == 1) {
    return argument1+argument2; 
}

if (_p == 0) {
    _p = argument3*0.3;
}

if (_a < abs(argument2)) 
{ 
    _a = argument2; 
    _s = _p*0.25; 
}
else{
    _s = _p / (2 * pi) * arcsin (argument2 / _a);
}

return -(_a * power(2,10 * (--_arg0)) * sin((_arg0 * argument3 - _s) * (2 * pi) / _p)) + argument1;


