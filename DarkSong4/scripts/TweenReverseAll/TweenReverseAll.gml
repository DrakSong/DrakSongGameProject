/// @description  TweenReverseAll(deactivated)
/// @function  TweenReverseAll
/// @param deactivated
/*
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Reverses play direction of all active tweens
*/

TweensExecute(TWEENS_ALL, 0, argument0, TweenReverse);

