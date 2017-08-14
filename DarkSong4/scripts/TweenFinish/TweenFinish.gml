/// @description  TweenFinish(tween,call_event)
/// @function  TweenFinish
/// @param tween
/// @param call_event
/*
    @tween      = tween id
    @call_event = execute FINISH EVENT callbacks?
    
    RETURN:
        null tween id
        
    INFO:
        Finishes the specified tween, updating it to its destination.
        DOES NOT affect tweens using PATROL|LOOP|REPEAT play modes.
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return undefined; }

if (_t[TWEEN.DELAY] > 0) return 0;

if (_t[TWEEN.STATE] >= 0 || _t[TWEEN.STATE] == TWEEN_STATE.PAUSED)
{
    switch(_t[TWEEN.MODE])
    {
    case TWEEN_MODE_ONCE:
        _t[@ TWEEN.TIME] = _t[TWEEN.DURATION]; // Update tween's time
    break;
       
    case TWEEN_MODE_BOUNCE:
        _t[@ TWEEN.TIME] = 0; // Update tween's time
    break;
    
    default: return 0;
    }
    
    // Set tween state as STOPPED
    _t[@ TWEEN.STATE] = TWEEN_STATE.STOPPED;
    
    // Update property with start value
    script_execute(_t[TWEEN.PROPERTY], _t[TWEEN.START] + _t[TWEEN.CHANGE]*(_t[TWEEN.TIME] > 0), _t[TWEEN.DATA]);
    
    // Execute finish event IF set to do so
    if (argument1) { TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_FINISH); }
    
    // IF tween is set to be destroyed
    if (_t[TWEEN.DESTROY]) { TweenDestroy(_t); }
}

