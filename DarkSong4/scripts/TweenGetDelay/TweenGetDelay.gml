/// @description  TweenGetDelay(tween)
/// @function  TweenGetDelay
/// @param tween

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _delay = _t[TWEEN.DELAY];

if (_delay <= 0) { return 0; }
else             { return _delay; }

