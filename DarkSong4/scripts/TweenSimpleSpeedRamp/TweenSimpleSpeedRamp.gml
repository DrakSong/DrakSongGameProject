/// @description  TweenSimpleSpeedRamp(speed1,speed2,dur,ease[,delay])
/// @function  TweenSimpleSpeedRamp
/// @param speed1
/// @param speed2
/// @param dur
/// @param ease[
/// @param delay]

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, speed__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, speed__, _tween);
return _tween;


