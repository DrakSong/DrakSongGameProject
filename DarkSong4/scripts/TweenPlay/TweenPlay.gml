/// @description  TweenPlay(tween[,prop,ease,mode,delta,delay,dur,start,dest,...])
/// @function  TweenPlay
/// @param tween[
/// @param prop
/// @param ease
/// @param mode
/// @param delta
/// @param delay
/// @param dur
/// @param start
/// @param dest
/// @param ...]
/*
    @tween   = existing tween id
    (OPTIONAL -- IF TWEEN DEFINED)
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
        na
    
    INFO:
        Plays a previously created tween.
        Only the tween id is required if tween is already fully defined.
        
    Example:
        // Create undefined tween
        tween1 = TweenCreate(id);
        // Play undefined tween
        TweenPlay(tween1, x__, EaseLinear, TWEEN_MODE_LOOP, true, 0.0, 1.25, x, mouse_x);
        
        // Create defined tween
        tween2 = TweenCreate(id, y__, EaseOutQuad, TWEEN_MODE_BOUNCE, true, 1.0, 2.5, y, mouse_y);
        // Play defined tween
        TweenPlay(tween2);
*/

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return undefined; }

var _property = _t[TWEEN.PROPERTY];

_t[@ TWEEN.TIME] = 0;

if (argument_count > 1)
{
    if (argument_count > 9)
    {
        _property[0] = argument[1]; // Set extended property setter script
        
        if (argument_count == 10)
        {
            _property[1] = argument[9]; // override target data
        }
        else
        {
            // Add last extended arguments array
            var _extArgs;
            _extArgs[argument_count-10] = argument[argument_count-1];
            
            // Add remaining extended arguments
            var _argIndex = -1;
            repeat(argument_count-10)
            {
                ++_argIndex;
                _extArgs[_argIndex] = argument[_argIndex+9];
            }
    
            _property[1] = _extArgs; // override target data with array data
        }
    }
    else // Regular property
    {
        _property = argument[1];
    }

    _t[@ TWEEN.PROPERTY_RAW] = _property;
    _t[@ TWEEN.EASE] = argument[2];
    _t[@ TWEEN.MODE] = argument[3];
    _t[@ TWEEN.DELTA] = argument[4];
    _t[@ TWEEN.DURATION] = argument[6];
    _t[@ TWEEN.START] = argument[7];
    _t[@ TWEEN.CHANGE] = argument[8]-argument[7];
    _t[@ TWEEN.DELAY_START] = argument[5];

    if (is_array(_property))
    {
        if (array_length_1d(_property) == 1) // Array property
        {
            _t[@ TWEEN.DATA] = _property;
            _t[@ TWEEN.PROPERTY] = TGMS_ARRAY__;
            _property = TGMS_ARRAY__;
        }
        else // Extended property
        {
            _t[@ TWEEN.DATA] = _property[1];
            var _script = _property[0];
            _property = _script;
            _t[@ TWEEN.PROPERTY] = _script;
        }
    }
    else 
    if (is_real(_property)) // Standard property
    {
        _t[@ TWEEN.PROPERTY] = _property;
        _t[@ TWEEN.DATA] = _t[TWEEN.TARGET];
    }
    else // Null property
    {
        _property = null__;
        _t[@ TWEEN.DATA] = 0;
        _t[@ TWEEN.PROPERTY] = null__;
    }
}

if (_t[TWEEN.DELAY_START] <= 0)
{
    // Set tween as active
    _t[@ TWEEN.STATE] = _t[TWEEN.TARGET];
    // Mark tween for delay-list removal if not already removed
    if (_t[TWEEN.DELAY] != -10) { _t[@ TWEEN.DELAY] = -1; }
    // Update property with start value
    script_execute(_property, _t[TWEEN.START], _t[TWEEN.DATA], _t[TWEEN.TARGET]);
    // Execute onPlay event
    TGMS_ExecuteEvent(_t[TWEEN.EVENTS], TWEEN_EV_PLAY);
}
else
{   
    // Add tween to delay list if not already added
    if (_t[TWEEN.DELAY] == -10) { ds_list_add(SharedTweener().delayedTweens, _t); }
    // Set tween as waiting
    _t[@ TWEEN.STATE] = TWEEN_STATE.DELAYED;   
    // Set delay to set delay value
    _t[@ TWEEN.DELAY] = _t[TWEEN.DELAY_START];
}
    
    


