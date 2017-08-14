/// @description  TGMS_ExecuteEvent(event_list,event_type)
/// @function  TGMS_ExecuteEvent
/// @param event_list
/// @param event_type
/*
    DON'T CALL THIS DIRECTLY!!!
*/

// IF events and event type initialized...
if (argument0 != -1)
{
    if (ds_map_exists(argument0, argument1))
    {
        // Get event data
        var _event = ds_map_find_value(argument0, argument1);
        
        // Iterate through all event callbacks (isEnabled * event list size)
        var _index = 0;
        repeat(_event[| 0] * (ds_list_size(_event)-1))
        {
            var _cb = _event[| ++_index];             // Cache callback
            var _target = _cb[TWEEN_CALLBACK.TARGET]; // Cache target
        
            with(_target) // Using target environment...
            {
                // Execute callback script with proper number of arguments
                switch(array_length_1d(_cb) * _cb[TWEEN_CALLBACK.ENABLED])
                {
                case TWEEN_CALLBACK.ARG0: script_execute(_cb[TWEEN_CALLBACK.SCRIPT]); break;
                case TWEEN_CALLBACK.ARG1: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0]); break;
                case TWEEN_CALLBACK.ARG2: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1]); break;
                case TWEEN_CALLBACK.ARG3: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2]); break;
                case TWEEN_CALLBACK.ARG4: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3]); break;
                case TWEEN_CALLBACK.ARG5: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4]); break;
                case TWEEN_CALLBACK.ARG6: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5]); break;
                case TWEEN_CALLBACK.ARG7: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6]); break;
                case TWEEN_CALLBACK.ARG8: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7]); break;
                case TWEEN_CALLBACK.ARG9: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8]); break;
                case TWEEN_CALLBACK.ARG10: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9]); break;
                case TWEEN_CALLBACK.ARG11: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10]); break;
                case TWEEN_CALLBACK.ARG12: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11]); break;
                case TWEEN_CALLBACK.ARG13: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11], _cb[TWEEN_CALLBACK.ARG12]); break;   
                }
            }
            
            // IF target does not exist
            if (instance_exists(_target) == false)
            {
                // Attempt to activate target
                instance_activate_object(_target);
                
                // IF target now exists
                if (instance_exists(_target))
                {
                    // Put target back to deactivated state
                    instance_deactivate_object(_target);
                }
                else
                {
                    // Delete callback from event list -- decrement loop index
                    ds_list_delete(_event, _index--);
                }
            }
        }
    }
}

