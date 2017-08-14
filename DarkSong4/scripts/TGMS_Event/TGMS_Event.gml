/*
    It is possible to execute specified scripts for various tween events using callbacks.
    Up to 12 arguments can be passed to callback scripts.
    Multiple callbacks can be added to the same tween event.
    
    The "event" parameter can take any of the following TWEEN EVENT CONSTANTS:
    
    [Tween Event Constants]
        
        TWEEN_EV_PLAY       ... when tween is played
        TWEEN_EV_FINISH     ... when tween finishes with modes ONCE|BOUNCE
        TWEEN_EV_CONTINUE   ... when tween continues with modes BOUNCE|PATROL|LOOP|REPEAT
        TWEEN_EV_STOP       ... when tween is stopped
        TWEEN_EV_PAUSE      ... when tween is paused
        TWEEN_EV_RESUME     ... when tween is resumed
        TWEEN_EV_REVERSE    ... when tween is reversed
        
    [Example]
    
        // Fire a tween and store tween id handle
        tween = TweenFire(id, x__, EaseLinear, TWEEN_MODE_ONCE, true, 0.0, 1.0, x, mouse_x);
        
        // Have "Finished" message appear when tween finishes
        TweenAddCallback(tween, TWEEN_EV_FINISH, id, ShowMessage, "Finished!");
*/

