/// @description  TweenDestroy(tween)
/// @function  TweenDestroy
/// @param tween
/*
    @tween = tween id
    
    RETURNS:
        null tween id
        
    INFO:
        Manually destroys the specified tween.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return undefined; }
if (_t[TWEEN.STATE] == TWEEN_STATE.DESTROYED) { return undefined; }

if (ds_map_exists(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]))
{
    ds_map_delete(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]);                // Invalidate tween handle
}

if (ds_map_exists(SharedTweener().simpleTweens, _t[TWEEN.SIMPLE_KEY]))
{
    ds_map_delete(SharedTweener().simpleTweens, _t[TWEEN.SIMPLE_KEY]); // Delete simple tween data
}

_t[@ TWEEN.STATE] = TWEEN_STATE.DESTROYED;                         // Set state as destroyed
_t[@ TWEEN.ID] = undefined;                                        // Nullify self reference

// Invalidate tween target or destroy target instance depending on destroy mode
if (_t[TWEEN.DESTROY] != 2)
{ 
    _t[@ TWEEN.TARGET] = noone; // Invalidate target instance
}
else // Destroy target instance
{
    var _target = _t[TWEEN.TARGET]; // Get target to destroy
    
    if (instance_exists(_target))
    {
        with(_target) instance_destroy();
    }
    else
    {
        instance_activate_object(_target); // Attempt to activate target by chance it was deactivated
        with(_target) instance_destroy(); // Attempt to destroy target
    } 
}

return undefined;


