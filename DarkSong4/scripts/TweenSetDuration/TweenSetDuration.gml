/// @description  TweenSetDuration(tween,duration)
/// @function  TweenSetDuration
/// @param tween
/// @param duration

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;
    
_t[@ TWEEN.DURATION] = argument1;

