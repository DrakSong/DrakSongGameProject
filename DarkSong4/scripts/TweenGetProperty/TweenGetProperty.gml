/// @description  TweenGetProperty(tween)
/// @function  TweenGetProperty
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return null__;

return _t[TWEEN.PROPERTY_RAW];

