/// @description  TweenSetDelta(tween,bool)
/// @function  TweenSetDelta
/// @param tween
/// @param bool

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.DELTA] = argument1;


