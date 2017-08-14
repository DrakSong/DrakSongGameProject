/// @description  TweenSetTimeScale(tween,scale)
/// @function  TweenSetTimeScale
/// @param tween
/// @param scale

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.TIME_SCALE] = argument1 * _t[TWEEN.DIRECTION];


