/// @description  TweenSetDestination(tween,destination)
/// @function  TweenSetDestination
/// @param tween
/// @param destination

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.CHANGE] = argument1 -_t[TWEEN.START];


