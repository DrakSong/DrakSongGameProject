/// @description  TweenGetTarget(tween)
/// @function  TweenGetTarget
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return noone;

return _t[TWEEN.TARGET];

