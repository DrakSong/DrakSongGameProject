/// @description  TweenGetStart(tween)
/// @function  TweenGetStart
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.START];

