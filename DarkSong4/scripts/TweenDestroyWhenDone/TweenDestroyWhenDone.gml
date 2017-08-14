/// @description  TweenDestroyWhenDone(tween,destroy[,kill_target])
/// @function  TweenDestroyWhenDone
/// @param tween
/// @param destroy[
/// @param kill_target]
/*
    @tween       = tween id
    @destroy     = destroy tween when it finishes?
    @kill_target = (optional) destroy target when tween finishes?
    
    RETURN:
        NA
        
    INFO:
        Forces tween to be destroyed when finished or stopped.
        Optionally destroys target as well.
*/

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return 0; }
    
if (argument_count == 2)
{
    _t[@ TWEEN.DESTROY] = argument[1];
}
else
{
    _t[@ TWEEN.DESTROY] = (argument[1]+argument[2])*argument[1];
}
