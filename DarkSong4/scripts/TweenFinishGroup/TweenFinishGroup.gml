/// @description  TweenFinishGroup(group,call_event,deactivated)
/// @function  TweenFinishGroup
/// @param group
/// @param call_event
/// @param deactivated
/*
    @group       = tween group
    @call_event  = execute FINISH EVENT callbacks?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Finishes tweens associated with group, updating them to their destinations.
        DOES NOT affect tweens using PATROL|LOOP|REPEAT play modes.
*/

TweensExecute(TWEENS_GROUP, argument0, argument2, TweenReverse, argument1);

