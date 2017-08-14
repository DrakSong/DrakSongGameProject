/// @description  TweenEventClear(tween,event)
/// @function  TweenEventClear
/// @param tween
/// @param event
/*
    @tween = tween id
    @event = tween event constant -- TWEEN_EV_****
    
    RETURN:
        NA
        
    INFO:
        Removes all callbacks from the specified tween event
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _events = _t[TWEEN.EVENTS];

if (_events != -1)
{    
    if (ds_map_exists(_events, argument1))
    {
        var _event = _events[? argument1]; 
        var _index = 0;
        
        repeat(ds_list_size(_event)-1)
        {
            // Get callback
            var _cb = _event[| ++_index];
            // Invalidate target
            _cb[@ TWEEN_CALLBACK.TARGET] = noone;
        }
    }
}

