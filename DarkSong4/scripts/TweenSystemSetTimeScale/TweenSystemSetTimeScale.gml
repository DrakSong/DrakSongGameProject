/// @description  TweenSystemSetTimeScale(scale)
/// @function  TweenSystemSetTimeScale
/// @param scale
/*
    @scale = time scale
    
    RETURN:
        na
        
    INFO:
        Sets the tweening engine's system-wide time scale.
        This will affect the time scale of all active tweens,
        independent of their own time scale.
*/

(SharedTweener()).timeScale = argument0;
global.TGMS_TimeScale = argument0;

