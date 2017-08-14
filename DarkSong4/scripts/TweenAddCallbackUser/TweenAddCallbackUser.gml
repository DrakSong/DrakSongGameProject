/// @description  TweenAddCallbackUser(tween,event,target,user_event)
/// @function  TweenAddCallbackUser
/// @param tween
/// @param event
/// @param target
/// @param user_event
/*
    @tween       = tween id
    @event       = tween event constant -- TWEEN_EV_****
    @target      = instance environment to use when calling user event
    @user_event  = user event to be called when callback executed (0-15)
    
    RETURN:
        callback id
        
    INFO:
        Sets a user event (0-15) to be called on specified tween event.
        Multiple callbacks can be added to the same event.
        
        "event" can take any of the following TWEEN_EV_**** constants:
        TWEEN_EV_PLAY
        TWEEN_EV_FINISH
        TWEEN_EV_CONTINUE
        TWEEN_EV_STOP
        TWEEN_EV_PAUSE
        TWEEN_EV_RESUME
        TWEEN_EV_REVERSE    
*/

TweenAddCallback(argument0, argument1, argument2, TGMS_EventUser, argument3);

