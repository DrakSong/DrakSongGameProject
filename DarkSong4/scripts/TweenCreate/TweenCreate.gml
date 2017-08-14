/// @description  TweenCreate(target[,prop,ease,mode,delta,delay,dur,start,dest,...])
/// @function  TweenCreate
/// @param target[
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
    @target   = instance to associate with tween
    (OPTIONAL)
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
        Creates and returns a tween which continues to exist until
        target instance is destroyed or is manually destroyed with TweenDestroy().
        
        Created tweens can be undefined or defined when created.
        Undefined tweens must be defined when using TweenPlay().
        
    Example:
        // Create undefined tween
        tween_undefined = TweenCreate(id);
        
        // Create defined tween
        tween_defined = TweenCreate(id, x__, EaseLinear, TWEEN_MODE_PATROL, false, 30, 90, x, mouse_x);
*/

var _t = global.TGMS_TweenDefault;

// Set tween properties -- creates new array from copy
_t[TWEEN.TARGET] = argument[0].id;

// Set tween property
if (argument_count > 1)
{
    var _property;
            
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

    _t[TWEEN.PROPERTY_RAW] = _property;
    
    if (is_array(_property))
    {
        if (array_length_1d(_property) == 1) // Single index array property
        {
            _t[TWEEN.DATA] = _property;
            _t[TWEEN.PROPERTY] = TGMS_ARRAY__;
        }
        else // Extended property
        {
            _t[TWEEN.DATA] = _property[1];
            var _script = _property[0];
            _t[TWEEN.PROPERTY] = _script;
        }
    }
    else 
    if (is_real(_property)) // Standard property
    {
        _t[TWEEN.PROPERTY] = _property;
        _t[TWEEN.DATA] = _t[TWEEN.TARGET];
    }
    else
    {
        _t[TWEEN.PROPERTY] = null__;
    } 
}

// Handle depcrecated argument counts
switch(argument_count)
{
case 1:
case 2:
break;

case 3:
    _t[TWEEN.DELTA] = argument[2];
break;

case 7:
    _t[TWEEN.DELTA] = argument[2];
    _t[TWEEN.EASE] = argument[3];
    _t[TWEEN.START] = argument[4];
    _t[TWEEN.CHANGE] = argument[5] - argument[4];
    _t[TWEEN.DURATION] = argument[6];
break;

default:
    _t[TWEEN.EASE] = argument[2];
    _t[TWEEN.MODE] = argument[3];
    _t[TWEEN.DELTA] = argument[4];
    _t[TWEEN.DELAY_START] = argument[5];
    _t[TWEEN.DURATION] = argument[6];
    _t[TWEEN.START] = argument[7];
    _t[TWEEN.CHANGE] = argument[8]-argument[7];
break;
}

var _tID = ++global.TGMS_INDEX_TWEEN;
// Store tween index handle inside tween
_t[TWEEN.ID] = _tID;
// Assign tween handle to map
global.TGMS_MAP_TWEEN[? _tID] = _t;
// Add new tween to tweening list
ds_list_add(SharedTweener().tweens, _t);
// Return tween index handle
return _tID;
