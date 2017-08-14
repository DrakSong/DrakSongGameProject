/// @description  TweenSetGroup(tween,group)
/// @function  TweenSetGroup
/// @param tween
/// @param group

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.GROUP] = argument1;


