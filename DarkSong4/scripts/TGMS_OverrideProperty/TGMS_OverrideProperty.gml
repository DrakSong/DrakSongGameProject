/// @description  TGMS_OverrideProperty(target,property,tween)
/// @function  TGMS_OverrideProperty
/// @param target
/// @param property
/// @param tween

var _key = string(argument0) + "." + string(argument1);
var _sharedTweener = SharedTweener();

if (ds_map_exists(_sharedTweener.simpleTweens, _key)) 
{
    TweenStop(_sharedTweener.simpleTweens[? _key]);
}

var _t = TGMS_FetchTween(argument2);
if (is_undefined(_t)) { return 0; }

_t[@ TWEEN.SIMPLE_KEY] = _key;
_sharedTweener.simpleTweens[? _key] = _t[TWEEN.ID];

