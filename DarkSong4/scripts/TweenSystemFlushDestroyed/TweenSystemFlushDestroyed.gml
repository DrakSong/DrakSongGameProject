/// @description  TweenSystemFlushDestroyed()
/// @function  TweenSystemFlushDestroyed
/*
    RETURN:
        na
        
    INFO:
        Overrides passive memory manager by immediately removing
        all destroyed tweens from the system
*/

if (instance_exists(global.TGMS_SharedTweener))
{
    global.TGMS_SharedTweener.flushDestroyed = true;
}

