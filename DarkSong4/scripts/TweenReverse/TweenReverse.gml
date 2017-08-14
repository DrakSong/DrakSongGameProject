/// @description  TweenReverse(tween)
/// @function  TweenReverse
/// @param tween
/*
    @tween = tween id
    
    RETURN:
        NA
        
    INFO:
        Reverses play direction of specified tween
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

if (_t[TWEEN.STATE] > 0 || _t[TWEEN.STATE] == TWEEN_STATE.PAUSED)
{
    _t[@ TWEEN.DIRECTION] = -_t[TWEEN.DIRECTION];
    _t[@ TWEEN.TIME_SCALE] = -_t[TWEEN.TIME_SCALE];
    TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_REVERSE);
}

