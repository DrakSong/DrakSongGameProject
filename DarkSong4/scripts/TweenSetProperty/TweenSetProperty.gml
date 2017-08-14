/// @description  TweenSetProperty(tween,property)
/// @function  TweenSetProperty
/// @param tween
/// @param property

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _property = argument1;
_t[@ TWEEN.PROPERTY_RAW] = argument1;

if (is_array(_property))
{
    if (array_length_1d(_property) == 1) // Array property
    {
        _t[@ TWEEN.DATA] = _property;
        _t[@ TWEEN.PROPERTY] = TGMS_ARRAY__;
    }
    else // Extended property
    {
        _t[@ TWEEN.DATA] = _property[1];
        _t[@ TWEEN.PROPERTY] = _property[0];
    }
}
else if (is_real(_property)) // Standard property
{
    _t[@ TWEEN.PROPERTY] = _property;
    _t[@ TWEEN.DATA] = _t[TWEEN.TARGET];
}
else // Null property
{
    _t[@ TWEEN.DATA] = 0;
    _t[@ TWEEN.PROPERTY] = null__;
}

