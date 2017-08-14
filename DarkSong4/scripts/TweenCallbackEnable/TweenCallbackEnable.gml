/// @description  TweenCallbackEnable(callback,enable)
/// @function  TweenCallbackEnable
/// @param callback
/// @param enable
/*
    @callback = callback id
    @enable   = enable callback execution?
    
    RETURN:
        na
        
    INFO:
        Allows specified callbacks to be enabled/disabled
*/

var _cb = argument0;

if (is_array(_cb))
    _cb[@ TWEEN_CALLBACK.ENABLED] = argument1;



