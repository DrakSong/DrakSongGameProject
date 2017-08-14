/// @description  TweenResumeAll(deactivated)
/// @function  TweenResumeAll
/// @param deactivated
/*
    @deactivated = affect tweens with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Resumes all active tweens
*/

TweensExecute(TWEENS_ALL, 0, argument0, TweenResume);

