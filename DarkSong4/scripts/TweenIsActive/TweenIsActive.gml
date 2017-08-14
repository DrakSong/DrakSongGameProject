/// @description  TweenIsActive(tween)
/// @function  TweenIsActive
/// @param tween
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if tween is playing OR actively processing delay
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return (_t[TWEEN.STATE] >= 0 || _t[TWEEN.STATE] == TWEEN_STATE.DELAYED);

