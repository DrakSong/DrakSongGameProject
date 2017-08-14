/// @description  TweenFinishTarget(target,call_event,deactivated)
/// @function  TweenFinishTarget
/// @param target
/// @param call_event
/// @param deactivated
/*
    @target      = instance target id or object index
    @call_event  = execute FINISH EVENT callbacks?
    @deactivated = affect tweens with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Finishes all tweens associated with target, updating them to their destinations.
        DOES NOT affect tweens using PATROL|LOOP|REPEAT play modes.
*/

TweensExecute(TWEENS_TARGET, argument0, argument2, TweenReverse, argument1);
