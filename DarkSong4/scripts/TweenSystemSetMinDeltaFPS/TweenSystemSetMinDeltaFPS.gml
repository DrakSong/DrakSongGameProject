/// @description  TweenSystemSetMinDeltaFPS(fps)
/// @function  TweenSystemSetMinDeltaFPS
/// @param fps
/*
    @fps = frame rate
    
    RETURN:
        na
        
    INFO:
        Sets the minimum frame rate allowed before delta timing begins to lag behind.
        It is advised to keep this number as default, unless you know what you're doing.
        DEFAULT: 10
*/

with(SharedTweener())
{
    global.TGMS_MinDeltaFPS = argument0;
    minDeltaFPS = argument0;
    maxDelta = 1/minDeltaFPS;
}

