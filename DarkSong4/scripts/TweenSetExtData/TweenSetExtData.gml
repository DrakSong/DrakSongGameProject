/// @description  TweenSetExtData(tween,arg0,arg1,...)
/// @function  TweenSetExtData
/// @param tween
/// @param arg0
/// @param arg1
/// @param ...
/*
    Updates a tween's extended property setter data
*/

var _t = TGMS_FetchTween(argument[0]);

if (argument_count == 2)
{
    _args = argument[1];
}
else
{
    var _args, _argIndex = -1;
    repeat(argument_count-1)
    {
        ++_argIndex;
        _args[_argIndex] = argument[_argIndex+1];
    }
}

var _propRaw = _t[TWEEN.PROPERTY_RAW];
_propRaw[@ 1] = _args;
_t[@ TWEEN.DATA] = _args;
