/// @description  TweenSetDelay(tween,delay)
/// @function  TweenSetDelay
/// @param tween
/// @param delay

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

if (_t[TWEEN.DELAY] > 0) { _t[@ TWEEN.DELAY] = argument1; }

