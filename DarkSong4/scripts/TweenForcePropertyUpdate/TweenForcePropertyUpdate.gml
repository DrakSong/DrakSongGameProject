/// @description  TweenForcePropertyUpdate(tween)
/// @function  TweenForcePropertyUpdate
/// @param tween
/*
    Forces a tween to re-calculate and update its property
*/

var _t = TGMS_FetchTween(argument0);

if (_t[TWEEN.STATE] >= 0 && _t[TWEEN.DURATION]!= 0)
{
    if (_t[TWEEN.PROPERTY] != null__) script_execute(_t[TWEEN.PROPERTY], script_execute(_t[TWEEN.EASE], clamp(_t[TWEEN.TIME], 0, _t[TWEEN.DURATION]), _t[TWEEN.START], _t[TWEEN.CHANGE], _t[TWEEN.DURATION]), _t[TWEEN.DATA], _t[TWEEN.TARGET]);
}

