/// @description  TweenDestroySafe(tween)
/// @function  TweenDestroySafe
/// @param tween
/*
    @tween  tween id
    
    RETURNS: 
        null tween id
    
    INFO:        
        Safely destroys a tween, even if it doesn't exit
*/

var _t = argument0;

if (is_array(_t))
{
    TweenDestroy(_t);
}
else
if (is_real(_t))
{
    if (ds_map_exists(global.TGMS_MAP_TWEEN, _t))
    {
        TweenDestroy(_t);
    }
}

return undefined;

