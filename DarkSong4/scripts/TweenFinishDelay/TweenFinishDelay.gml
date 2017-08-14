/// @description  TweenFinishDelay(tween,call_event)
/// @function  TweenFinishDelay
/// @param tween
/// @param call_event
/*

*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return undefined; }

if (_t[TWEEN.DELAY] > 0)
{
    // Mark delay for removal from delay list
    _t[@ TWEEN.DELAY] = -1; 
    
    // Execute FINISH DELAY event
    if (argument1) { TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_FINISH_DELAY); }
    // Set tween as active
    _t[@ TWEEN.STATE] = _t[TWEEN.TARGET];                      
    // Update property with start value
    if (argument1) { script_execute(_t[TWEEN.PROPERTY], _t[TWEEN.START], _t[TWEEN.DATA], _t[TWEEN.TARGET]); }
    // Execute PLAY event
    TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_PLAY);
}

