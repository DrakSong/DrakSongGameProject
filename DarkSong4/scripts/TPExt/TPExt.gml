/// @description  TPExt(arg0,arg1,...)
/// @function  TPExt
/// @param arg0
/// @param arg1
/// @param ...
/*
    Returns supplied arguments as a 1D Array.
    Convenient for passing large number of arguments to extended property setters.
    
    Example:
        // Fire tween passing it extended data to extended property setter
        var _extData = TPext(x, mouse_x, y, mouse_y);
        TweenFire(id, ext_xy__, EaseOutQuad, TWEEN_MODE_ONCE true, 0.0, 1.0, 0, 1, _extData;
        
        // The previous example would be the same as doing...
        TweenFire(id ext_xy__, EaseOutQuad, TWEEN_MODE_ONCE, true, 0.0, 1.0, 0, 1, x, mouse_x, y, mouse_y);
*/

var _ret, _maxIndex = argument_count-1;

// Set the high argument first, for optimisation
_ret[_maxIndex] = argument[_maxIndex];

// Add remaining arguments to array
var i = -1;
repeat(_maxIndex)
{
    ++i;
    _ret[i] = argument[i];
}

// Return extended data array
return _ret;
