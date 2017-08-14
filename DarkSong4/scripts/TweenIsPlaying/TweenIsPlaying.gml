/// @description  TweenIsPlaying(tween)
/// @function  TweenIsPlaying
/// @param tween
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is actively playing
        ** Will NOT return true if tween is processing delay **
        
    Example:
        if (TweenIsPlaying(tween))
        {
            TweenPause(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] >= 0;

