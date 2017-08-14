/// @description  TweenSystemCount()
/// @function  TweenSystemCount
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens in system, excluding those in inactive persistent rooms
*/

return ds_list_size(SharedTweener().tweens);


