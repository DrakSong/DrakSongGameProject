/// @description  TweenGetEase(tween)
/// @function  TweenGetEase
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return EaseLinear;

return _t[TWEEN.EASE];

