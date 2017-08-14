/// @description  TweenDestroyGroup(group,deactivated)
/// @function  TweenDestroyGroup
/// @param group
/// @param deactivated
/*
    @group       = tween group
    @deactivated = destroy tweens associated with deactivated targets?
    
    RETURNS:
        NA
        
    INFO:
        Manually destroys all tweens associated with specified group.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/

TweensExecute(TWEENS_GROUP, argument0, argument1, TweenDestroy);

