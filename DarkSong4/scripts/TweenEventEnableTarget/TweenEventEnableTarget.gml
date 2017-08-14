/// @description  TweenEventEnableTarget(target,event,enable,deactivated)
/// @function  TweenEventEnableTarget
/// @param target
/// @param event
/// @param enable
/// @param deactivated
/*
    @target      = target instance id or object index
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens associated with target
*/

TweensExecute(TWEENS_TARGET, argument0, argument3, TweenEventEnable, argument1, argument2);
