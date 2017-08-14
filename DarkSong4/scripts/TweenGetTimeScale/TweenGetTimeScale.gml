/// @description  TweenGetTimeScale(tween)
/// @function  TweenGetTimeScale
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 1;

return _t[TWEEN.TIME_SCALE] * _t[TWEEN.DIRECTION];

