/// @description  TweenCopy(tween,target)
/// @function  TweenCopy
/// @param tween
/// @param target
/*
    @tween  = tween id
    @target = target instance id or object index
    
    RETURN:
        tween id
    
    INFO:
        Returns a copy of indicated tween -- Events and delays are invalidated
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;
    
/// Following lines are a temp fix for array issue (TGMS_NOTE)
var _property = _t[TWEEN.PROPERTY_RAW];
if (is_array(_property))
{
    if (array_length_1d(_property) > 1)
    {
        var _args = _property[1];
        var _other = _args;
    }
}

return TweenCreate(argument1.id, _t[TWEEN.PROPERTY_RAW], _t[TWEEN.EASE], _t[TWEEN.MODE], _t[TWEEN.DELTA], _t[TWEEN.DELAY], _t[TWEEN.DURATION], _t[TWEEN.START], _t[TWEEN.START]+_t[TWEEN.CHANGE]);
