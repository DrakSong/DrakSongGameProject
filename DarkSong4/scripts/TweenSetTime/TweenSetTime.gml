/// @description  TweenSetTime(tween,time)
/// @function  TweenSetTime
/// @param tween
/// @param time

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

// Assign new time value
_t[@ TWEEN.TIME] = argument1;
TweenForcePropertyUpdate(_t);

