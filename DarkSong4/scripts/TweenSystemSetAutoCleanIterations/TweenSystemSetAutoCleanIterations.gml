/// @description  TweenSystemSetAutoCleanIterations(num)
/// @function  TweenSystemSetAutoCleanIterations
/// @param num
/*
    @num = number of tweens to check each step
    
    RETURN:
        na
        
    INFO:
        Sets the number of tweens to be passively checked
        each step for automatic garbage collection.
        DEFAULT: 10
*/

with(SharedTweener())
{
    global.TGMS_AutoCleanIterations = argument0;
    autoCleanIterations = argument0;
}
