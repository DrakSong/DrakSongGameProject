/// @description  TweenGetState(tween)
/// @function  TweenGetState
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return TWEEN_STATE.STOPPED;

return _t[TWEEN.STATE];

