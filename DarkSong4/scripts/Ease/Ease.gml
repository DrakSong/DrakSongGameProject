/// @description  Ease(value1,value2,amount,ease)
/// @function  Ease
/// @param value1
/// @param value2
/// @param amount
/// @param ease
/*
    @value1 = start value
    @value2 = end value
    @amount = (0-1) amount to interpolate between start/end values
    @ease   = ease algorithm script
    
    RETURN:
        real
        
    INFO:
        Interpolates between two values by a given amount using the specified easing algorithm.
    
    Example:
        var _start = x;
        var _dest  = mouse_x;
        var _amount = 0.25;
        var _ease = EaseInOutQuad;
        
        x = Ease(_start, _dest, _amount, _ease);
*/

return script_execute(argument3, argument2, argument0, argument1-argument0, 1);
