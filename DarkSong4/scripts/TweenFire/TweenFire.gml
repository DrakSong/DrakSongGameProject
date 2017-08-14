/// @description  TweenFire(target,prop,ease,mode,delta,delay,dur,start,dest,...)
/// @function  TweenFire
/// @param target
/// @param prop
/// @param ease
/// @param mode
/// @param delta
/// @param delay
/// @param dur
/// @param start
/// @param dest
/// @param ...
/*
    @target   = instance to associate with tween
    @prop     = property setter script
    @ease     = ease script  
    @mode     = tween mode (0=ONCE, 1=BOUNCE, 2=PATROL, 3=LOOP, 4=REPEAT)
    @delta    = whether or not to use delta(seconds) timing -- false will use step timing
    @delay    = amount of time to delay tween before playing (relative to delta)
    @dur      = duration of time to play tween
    @start    = start value of eased property
    @dest     = destination value of eased property
    @...      = (optional) additional parameters passed to extended property setters
    
    RETURN:
        tween ID
    
    INFO:
        Creates and plays a tween which is automatically destroyed when
        finished, stopped, or target instance is destroyed.
        
        The "mode" argument can take any of the following TWEEN MODE CONSTANTS:
        
            0 = TWEEN_MODE_ONCE       ... plays once from start to destination
            1 = TWEEN_MODE_BOUNCE     ... plays to destination then continues back to start
            2 = TWEEN_MODE_PATROL     ... continues back and forth between start and destination
            3 = TWEEN_MODE_LOOP       ... continuously loops back to start after reaching destination
            4 = TWEEN_MODE_REPEAT     ... continues endlessly from destination
        
    Example:
        // Bounce 'x' back and forth between x and mouse_x positions
        tween = TweenFire(id, x__, EaseInSine, TWEEN_MODE_PATROL, true, 0.0, 1.50, x, mouse_x);
        
        // Use extended property setter to tween view position to mouse position
        TweenFire(id, ext_view_xyview__, EaseOutQuad, 2, true, 1.0, 3.0, 0, 1, 0, view_xview[0], mouse_x, view_yview[0], mouse_y);
*/

if (argument_count >= 9)
{
    var _return, _property, _t = global.TGMS_TweenDefault;
    
    // Handle extended properties
    if (argument_count > 9)
    {
        _property[0] = argument[1]; // Set extended property setter script
        
        if (argument_count == 10) // If no extended arguments given
        {
            _property[1] = argument[9]; // override target data
        }
        else // Handle extended properties
        {
            
            var _extArgs; // Declare array used to hold extended arguments
            _extArgs[argument_count-10] = argument[argument_count-1]; // Add last argument first

            // Add remaining extended arguments
            var _argIndex = -1;
            repeat(argument_count-10)
            {
                ++_argIndex;
                _extArgs[_argIndex] = argument[_argIndex+9];
            }
    
            _property[1] = _extArgs; // Override target data with array data
        }
    }
    else // Regular property
    {
        _property = argument[1];
    }
    
    var _tIndex = ++global.TGMS_INDEX_TWEEN;    // Get new tween id
    _t[TWEEN.ID] = _tIndex                      // Assign new tween id
    _t[TWEEN.TARGET] = argument[0].id;          // Set target to instance
    _t[TWEEN.EASE] = argument[2];               // Set tween's ease algorithm
    _t[TWEEN.MODE] = argument[3];               // Set tween play mode
    _t[TWEEN.DELTA] = argument[4];              // Set delta
    _t[TWEEN.DURATION] = argument[6];           // Set tween's duration
    _t[TWEEN.START] = argument[7];              // Set start value
    _t[TWEEN.CHANGE] = argument[8]-argument[7]; // Calculate change value (dest-start)
    _t[TWEEN.DESTROY] = 1;                      // Destroy tween when finished
    _t[TWEEN.PROPERTY_RAW] = _property;         // Store raw property data

    if (is_array(_property))
    {
        if (array_length_1d(_property) == 1) // Single index array property
        {
            _t[TWEEN.DATA] = _property;         // Assign array as property data
            _t[TWEEN.PROPERTY] = TGMS_ARRAY__;  // Update property setter script to modify array
            _property = TGMS_ARRAY__;           // Update local property
        }
        else // Extended property
        {
            _t[TWEEN.DATA] = _property[1];  // Set tween's data to extended arguments
            var _script = _property[0];     // Cache script to use as property setter
            _property = _script;            // Update cached property setter
            _t[TWEEN.PROPERTY] = _script;   // Set tween's property setter script
        }
    }
    else if (is_real(_property)) // Standard property
    {
        _t[TWEEN.PROPERTY] = _property;     // Set tween's property setter script
        _t[TWEEN.DATA] = _t[TWEEN.TARGET];  // Set tween's data as target id
    }
    else // Null Property
    {
        _property = null__;             // Update cached property as null
        _t[TWEEN.PROPERTY] = null__;    // Set tween's property script as null
    }

    if (argument[5] <= 0) // If no delay set
    {   
        _t[TWEEN.STATE] = _t[TWEEN.TARGET]; // Set tween state as playing
        script_execute(_property, _t[TWEEN.START], _t[TWEEN.DATA], _t[TWEEN.TARGET]); // Update property to start value
    }
    else
    {
        _t[TWEEN.STATE] = TWEEN_STATE.DELAYED; // Set state as delayed
        _t[TWEEN.DELAY] = argument[5]; // Assign delay list reference to tween
        _t[TWEEN.DELAY_START] = argument[5]; // Set starting delay time
        ds_list_add(SharedTweener().delayedTweens, _t); // Add tween to global delayed list   
    }
    
    ds_list_add(SharedTweener().tweens, _t); // Add tween to global tweens list
    global.TGMS_MAP_TWEEN[? _tIndex] = _t; // Associate tween with global id
    return _tIndex; // Return tween id
}
else // Check for old version
if (argument_count == 7)
{
    return TweenFire(argument[0], argument[1], argument[3], TWEEN_MODE_ONCE, argument[2], 0, argument[6], argument[4], argument[5]);
}
