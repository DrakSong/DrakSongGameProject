/// @description  TweenSetStart(tween,start)
/// @function  TweenSetStart
/// @param tween
/// @param start

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _dest = _t[TWEEN.START] + _t[TWEEN.CHANGE];
_t[@ TWEEN.START] = argument1;
_t[@ TWEEN.CHANGE] = _dest - argument1;

