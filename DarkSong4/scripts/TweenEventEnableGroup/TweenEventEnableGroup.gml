/// @description  TweenEventEnableGroup(group,event,enable,deactivated)
/// @function  TweenEventEnableGroup
/// @param group
/// @param event
/// @param enable
/// @param deactivated
/*
    @group       = tween group
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens associated with group
*/

TweensExecute(TWEENS_GROUP, argument0, argument3, TweenEventEnable, argument1, argument2);

