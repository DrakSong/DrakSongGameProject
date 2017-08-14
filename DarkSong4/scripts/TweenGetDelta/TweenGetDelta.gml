/// @description  TweenGetDelta(tween)
/// @function  TweenGetDelta
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.DELTA];

