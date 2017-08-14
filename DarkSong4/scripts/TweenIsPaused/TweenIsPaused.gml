/// @description  TweenIsPaused(tween)
/// @function  TweenIsPaused
/// @param tween
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is paused
        
    Example:
        if (TweenIsPaused(tween))
        {
            TweenResume(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] == TWEEN_STATE.PAUSED;
