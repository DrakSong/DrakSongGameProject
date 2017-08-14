/// @description  TweenCalcTime(tween,time)
/// @function  TweenCalcTime
/// @param tween
/// @param time
/*
    @tween = tween id
    @time  = specific time in steps or seconds
    
    RETURN:
        real
        
    INFO:
        Returns a calculated value using a tweens current state
        at a specified point in time.
        
        Note: Useful with null property setters which can be set by
        using an empty string "" for property argument.
        
    EXAMPLE:
        // Create defined tween
        tween = TweenCreate(id, "", EaseInOutQuint, 0, true, 0.0, 2.5, x, mouse_x);
        
        // Calculate value of tween at 1.5 seconds through time
        x = TweenCalcAmount(tween, 1.5);
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;
    
// Return start if duration is invalid
if (_t[TWEEN.DURATION] == 0) { return _t[TWEEN.START]; }

// Return tween's calculated value based on its state at a set time
return script_execute(_t[TWEEN.EASE], argument1, _t[TWEEN.START], _t[TWEEN.CHANGE], _t[TWEEN.DURATION]);

