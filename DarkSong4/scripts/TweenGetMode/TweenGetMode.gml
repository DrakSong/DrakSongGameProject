/// @description  TweenGetMode(tween)
/// @function  TweenGetMode
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return TWEEN_MODE_ONCE;

return _t[TWEEN.MODE];

