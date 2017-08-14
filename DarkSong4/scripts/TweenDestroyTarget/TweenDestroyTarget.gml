/// @description  TweenDestroyTarget(target,deactivated)
/// @function  TweenDestroyTarget
/// @param target
/// @param deactivated
/*
    @target      = target instance id or object index
    @deactivated = affect tweens with deactivated targets?
    
    RETURNS:
        NA
        
    INFO:
        Manually destroys all tweens associated with specified target.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/

TweensExecute(TWEENS_TARGET, argument0, argument1, TweenDestroy);

