/// @description  TweenPlayDelay(tween,delay)
/// @function  TweenPlayDelay
/// @param tween
/// @param delay

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return undefined; }

_t[@ TWEEN.DELAY_START] = argument1;
TweenPlay(_t);
