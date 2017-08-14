/// @description  TweenPauseAll(deactivated)
/// @function  TweenPauseAll
/// @param deactivated
/*
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Pauses all active tweens
*/

TweensExecute(TWEENS_ALL, 0, argument0, TweenPause);

