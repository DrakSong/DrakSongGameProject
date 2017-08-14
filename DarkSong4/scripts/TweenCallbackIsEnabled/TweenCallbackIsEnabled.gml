/// @description  TweenCallbackIsEnabled(callback)
/// @function  TweenCallbackIsEnabled
/// @param callback
/*
    @callback = callback id
    
    RETURN:
        bool
        
    INFO:
        Returns whether or not a specified callback is enabled
*/

var _cb = argument0;

if (is_array(_cb))
    return _cb[TWEEN_CALLBACK.ENABLED];
