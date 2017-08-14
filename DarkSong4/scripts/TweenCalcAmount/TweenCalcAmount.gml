/// @description  TweenCalcAmount(tween,amount)
/// @function  TweenCalcAmount
/// @param tween
/// @param amount
/*
    @tween  = tween id
    @amount = relative time between 0.0 and 1.0
    
    RETURN:
        real
        
    INFO:
        Returns a calculated value using a tweens current state
        at a relative point in time.
        
        Note: Useful with null property setters which can be set by
        using an empty string "" for property argument.
        
    EXAMPLE:
        // Create defined tween
        tween = TweenCreate(id, "", EaseInOutQuint, 0, true, 0.0, 2.5, x, mouse_x);
        
        // Calculate value of tween at 25% through time
        x = TweenCalcAmount(tween, 0.25);
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

// Return start if duration is invalid
if (_t[TWEEN.DURATION] == 0) { return _t[TWEEN.START]; }

// Return tween's calculated value based on its state at a relative amount of time
return script_execute(_t[TWEEN.EASE], argument1, _t[TWEEN.START], _t[TWEEN.CHANGE], 1);
