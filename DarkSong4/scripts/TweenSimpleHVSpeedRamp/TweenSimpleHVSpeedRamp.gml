/// @description  TweenSimpleHVSpeedRamp(hspeed1,vspeed1,hspeed2,vspeed2,dur,ease[,delay])
/// @function  TweenSimpleHVSpeedRamp
/// @param hspeed1
/// @param vspeed1
/// @param hspeed2
/// @param vspeed2
/// @param dur
/// @param ease[
/// @param delay]

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_hvspeed__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_hvspeed__, _tween);
return _tween;
