/// @description  TGMS_FetchTween(tween_id)
/// @function  TGMS_FetchTween
/// @param tween_id

if (is_array(argument0)) { return argument0; }

if (is_real(argument0))
{
    if (ds_map_exists(global.TGMS_MAP_TWEEN, argument0))
    {
        return global.TGMS_MAP_TWEEN[? argument0];
    }

    // Show "invalid tween id" error message
    show_error(@"!!! INVALID TWEEN ID !!!
    " ,false);
}

return undefined;

