/// @description  TweenDefine(tween,target,prop,mode,ease,delta,delay,dur,start,dest,...)
/// @function  TweenDefine
/// @param tween
/// @param target
/// @param prop
/// @param mode
/// @param ease
/// @param delta
/// @param delay
/// @param dur
/// @param start
/// @param dest
/// @param ...
/*
    RETURN:
        na
        
    INFO:
        Updates definition of an existing tween
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _property;

if (argument_count > 10)
{
    var _extArgs, _argIndex = -1;
    
    // Set final property first
    _extArgs[argument_count-11] = argument[argument_count-1];
    
    // Add remaining property arguments
    var _argIndex = -1;
    repeat(argument_count-11)
    {
        ++_argIndex;
        _extArgs[_argIndex] = argument[_argIndex+10];
    }
    
    if (array_length_1d(_extArgs) == 1) _property[1] = _extArgs[0]; // override target data
    else _property[1] = _extArgs; // override target data with array data

    // Set extended property setter script
    _property[0] = argument[2];
}
else
{
    _property = argument[2];
}

TweenSetTarget(_t, argument[1]);
TweenSetProperty(_t, _property);
_t[@ TWEEN.MODE] = argument[3];
_t[@ TWEEN.EASE] = argument[4];
_t[@ TWEEN.DELTA] = argument[5];
_t[@ TWEEN.DELAY] = argument[6];
_t[@ TWEEN.DURATION] = argument[7];
_t[@ TWEEN.START] = argument[8];
_t[@ TWEEN.CHANGE] =  argument[9] - argument[8];

