/// @description  TweenSetMode(tween,mode)
/// @function  TweenSetMode
/// @param tween
/// @param mode
 
var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.MODE] = argument1;

