/// @description  TweenPause(tween)
/// @function  TweenPause
/// @param tween
/*
    @tween = tween id
    
    RETURN:
        NA
        
    INFO:
        Pauses specified tween
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }
    
if (_t[TWEEN.STATE] >= 0)
{
    _t[@ TWEEN.STATE] = TWEEN_STATE.PAUSED;
    TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_PAUSE);
}
else
if (_t[TWEEN.STATE] == TWEEN_STATE.DELAYED)
{
    _t[@ TWEEN.STATE] = TWEEN_STATE.PAUSED;
    TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_PAUSE_DELAY);
}

