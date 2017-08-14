/// @description  TweenIsStopped(tween)
/// @function  TweenIsStopped
/// @param tween
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is stopped
        
    Example:
        if (TweenIsStopped(tween))
        {
            TweenPlay(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] == TWEEN_STATE.STOPPED;


