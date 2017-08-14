/// @description  TweenSimpleMove(x1,y1,x2,y2,dur,ease[,delay])
/// @function  TweenSimpleMove
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param dur
/// @param ease[
/// @param delay]

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_xy__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_xy__, _tween);
return _tween;


