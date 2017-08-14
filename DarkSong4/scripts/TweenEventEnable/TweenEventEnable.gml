/// @description  TweenEventEnable(tween,event,enable)
/// @function  TweenEventEnable
/// @param tween
/// @param event
/// @param enable
/*
    @tween  = tween id
    @event  = tween event constant -- TWEEN_EV_****
    @enable = enable the tween event?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified tween event
*/

var _t= TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _EVENT_TYPE = argument1;
var _enable = argument2;
var _events = _t[TWEEN.EVENTS];

// Create and assign events map if it doesn't exist
if (_events == -1)
{
    _events = ds_map_create();
    _t[@ TWEEN.EVENTS] = _events;
}

if (ds_map_exists(_events, _EVENT_TYPE) == false)
{
    // Create event list
    var _event = ds_list_create();
    // Add event to events map
    _events[? _EVENT_TYPE] = _event;
}

// Set tween event state
var _event = _events[? _EVENT_TYPE];
_event[| 0] = _enable;

