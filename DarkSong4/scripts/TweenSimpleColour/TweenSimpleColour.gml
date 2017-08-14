/// @description  TweenSimpleColour(col1,col2,dur,ease[,delay])
/// @function  TweenSimpleColour
/// @param col1
/// @param col2
/// @param dur
/// @param ease[
/// @param delay]

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, ext_image_blend__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], 0, 1, argument[0], argument[1]);    
TGMS_OverrideProperty(id, ext_image_blend__, _tween);
return _tween;


