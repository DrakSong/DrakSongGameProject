/// @description  TweenCallbackIsValid(callback)
/// @function  TweenCallbackIsValid
/// @param callback
/*
    @callback = callback id
    
    RETURN:
        bool
        
    INFO:
        Returns whether or not the callback is valid (exists)
        
    Example:
        if (TweenCallbackValid(callback))
        {
            TweenCallbackInvalidate(callback);
        }
*/

var _cb = argument0;

if (is_array(_cb))
{
    return TweenExists(_cb[TWEEN_CALLBACK.TWEEN]);
}

return false;


