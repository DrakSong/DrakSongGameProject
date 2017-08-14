/// @description  TweenSystemDeltaTime(scaled)
/// @function  TweenSystemDeltaTime
/// @param scaled
/*
    @scaled = return delta time affected by system time scale?
    
    RETURN:
        real
        
    INFO:
        Returns the internal delta time updated by obj_SharedTweener.
        
    EXAMPLE:
        // Increase 'x' by 16 every second
        x += 16*TweenSystemDeltaTime(false);
*/

if (argument0)
{
    return SharedTweener().deltaTime * SharedTweener().timeScale;
}

return SharedTweener().deltaTime;

