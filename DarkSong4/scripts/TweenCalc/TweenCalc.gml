/// @description  TweenCalc(tween)
/// @function  TweenCalc
/// @param tween
/*
    @tween = tween id
    
    RETURN:
        real
        
    INFO:
        Returns a calculated value using a tweens current state.
        
        Note: Useful with null property setters which can be set by
        using an empty string "" for property argument.
        
    EXAMPLE:
        // Create defined tween
        tween = TweenFire(id, "", EaseInOutQuint, 0, true, 0.0, 2.5, x, mouse_x);
        
        // Calculate value of tween at its current state
        x = TweenCalcAmount(tween);
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _duration = _t[TWEEN.DURATION];

// Return start if duration is invalid
if (_duration == 0) { return _t[TWEEN.START]; }

// Return tween's calculated value for its current state
return script_execute(_t[TWEEN.EASE], clamp(_t[TWEEN.TIME], 0, _duration), _t[TWEEN.START], _t[TWEEN.CHANGE], _duration);

