/// @description  TweenResume(tweens)
/// @function  TweenResume
/// @param tweens
/*
    @tween = tween id
    
    RETURN:
        NA
        
    INFO:
        Resumes specified tween
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }
    
if (_t[TWEEN.STATE] == TWEEN_STATE.PAUSED)
{
    if (_t[TWEEN.DELAY] > 0)
    {
        _t[@ TWEEN.STATE] = TWEEN_STATE.DELAYED;
        TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_RESUME_DELAY);
    }
    else
    {
        _t[@ TWEEN.STATE] = _t[TWEEN.TARGET];
        TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_RESUME);
    }
}

