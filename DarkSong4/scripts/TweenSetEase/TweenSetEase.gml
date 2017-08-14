/// @description  TweenSetEase(tween,ease)
/// @function  TweenSetEase
/// @param tween
/// @param ease

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.EASE] = argument1;
TweenForcePropertyUpdate(_t);

