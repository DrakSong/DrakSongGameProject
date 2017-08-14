/// @description  TweensExecute(TWEENS_*,data,deactivated,script,arg0,...)
/// @function  TweensExecute
/// @param TWEENS_*
/// @param data
/// @param deactivated
/// @param script
/// @param arg0
/// @param ...
/*
    @tweens         Tweens to select for performing script (0=TWEENS_ALL, 1=TWEENS_GROUP, 2=TWEEN_TARGET)
    @data           Relevant group or target when using TWEENS_GROUP or TWEENS_TARGET -- not important when using TWEENS_ALL
    @deactivated    Include tweens associated with deactivated targets?
    @script         Script to execute for each tween
    @arg0...        (optional) Arguments to pass to executed script (up to 3)
    
    RETURN:
        na
        
    INFO:
        Iterates through all relevant tweens and executes a specified script for each.
        The following constants can be used for selecting tweens:
        
        0 = TWEENS_ALL
        1 = TWEENS_GROUP
        2 = TWEENS_TARGET
        
        Currently takes only a max of 3 optional arguments.
        
    Example:
        // Execute 'TweenStop' for all tweens, including those with deactivated targets
        TweensExecute(TWEENS_ALL, 0, true, TweenStop);
        
        // Execute 'TweenPause' with tweens belonging to group 2
        TweensExecute(TWEENS_GROUP, 2, false, TweenPause)
        
        // Execute 'TweenSetTime' for tweens associated with obj_Jumpy
        TweensExecute(TWEENS_TARGET, obj_Jumpy, false, TweenSetTime, 2.0);
*/

var _selection      = argument[0];
var _selectionData  = argument[1];
var _deactivated    = argument[2];
var _script         = argument[3];

var _argCount = argument_count-4;
var _arg0,_arg1,_arg2;

switch(_argCount)
{
    case 3: _arg2 = argument[6];
    case 2: _arg1 = argument[5];
    case 1: _arg0 = argument[4];
}

var _tweens = SharedTweener().tweens;
var _tIndex = 0;

switch(_selection)
{
    case TWEENS_ALL:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {  
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t);
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0);
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1);
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
            }
        break;
        }
    break;
    
    case TWEENS_GROUP:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t);
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0);
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1);
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
            }
        break;
        }
    break;
    
    case TWEENS_TARGET:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t);
                }
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0);
                }
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0, _arg1);
                }
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
                }
            }
        break;
        }
    break;
}

