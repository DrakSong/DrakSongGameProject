/// @description  TweenDestroyAll(deactivated)
/// @function  TweenDestroyAll
/// @param deactivated
/*
    @deactivated = destroy tweens associated with deactivated targets?
    
    RETURNS:
        NA
        
    INFO:
        Manually destroys the all tweens.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/
    
TweensExecute(TWEENS_ALL, 0, argument0, TweenDestroy);

