/// @description  TweenSetDelayStart(tween,delay)
/// @function  TweenSetDelayStart
/// @param tween
/// @param delay

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.DELAY_START] = argument1;
