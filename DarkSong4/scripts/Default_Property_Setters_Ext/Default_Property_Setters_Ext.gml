/// @description  Default_Property_Setters_Ext()
/// @function  Default_Property_Setters_Ext
/*
    *************
     PLEASE READ
    *************
    
    With extended property setters, you can access custom data which you choose to pass to it.
    Custom data can be passed as additional parameters to TweenFire(), TweenCreate, and TweenPlay().
    Any value supplied after the "destination" parameter will be passed as extended data.   
     
        var _x1 = x, _x2 = mouse_x;
        var _y1 = y, _y2 = mouse_y;
        
        TweenFire(id, ext_xy__, EaseLinear, 0, true, 0.0, 2.0, 0, 1, _x1, _x2, _y1, _y2);
    
    If ONLY ONE extra argument is passed, that value will directly override the [target] value
    passed to standard property setters as [argument1]. If MORE THAN ONE extra argument is supplied,
    then an [array] of all extended data will override [argument1]. 
    
    NOTE: In extended property setters, the tween's target can be accessed from [argument2]. 
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            var _viewID = 1;
            var _x1 = view_xview[_viewID];
            var _x2 = mouse_x;
            
            // Fire tween, passing view index as extended property
            TweenFire(id, ext_view_xview__, EaseOutQuad, 0, true, 0.0, 1.0, _x1, _x2, _viewID);
        }
        
        ** Property Setter Script ** --> [view] has directly overridden [target]
        /// ext_view_xview__(value, view) 
        {
            var _value = argument0;
            var _viewID = argument1;
            
            view_xview[_viewID] = _value;
        }
        
    
    When using extended property setters, it is often useful to
    create tweens with a start value of 0 and destination value of 1.
    The eased value between 0 and 1 can be accessed from the extended property setter 
    as a relative amount representing the tween's ease algorithm over time.
    This amount can be used with GameMaker's lerp() function to calculate
    custom data for updating multiple variables.
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            var _x1 = x, _x2 = mouse_x;
            var _y1 = y, _y2 = mouse_y;
        
            // Fire tween, passing x/y coordinates as extended data
            TweenFire(id, ext_xy__, EaseInQuad, 0, true, 0.0, 1.0, 0, 1, _x1, _x2, _y1, _y2);
        }
        
        ** Property Setter Script ** --> array passed to argument1
        /// ext_xy__(amount, data[x1,x2,y1,y2], target) 
        {
            var _amount = argument0;
            var _data = argument1;
            var _target = argument2;
            
            var _x1 = _data[0], _x2 = _data[1];
            var _y1 = _data[2], _y2 = _data[3];
            
            _target.x = lerp(_x1, _x2, _amount);
            _target.y = lerp(_y1, _y2, _amount);
        }
        
    
    If you need to pass many arguments to extended property setters, or for convenience,
    you can use TPExt() for pre-packaging extended data as a 1d array.
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            // Package extended data as an array
            var _xyCoords = TPExt(x, mouse_x, y, mouse_y);
        
            // Fire tween, directly passing extended array data
            TweenFire(id, ext_xy__, EaseInQuad, 0, true, 0.0, 1.0, 0, 1, _xyCoords);
        }
        

    It is possible to have extended property setters use different easing algorithms for each eased variable. 
    You can achieve this by tweening a value between 0 and 1 with [EaseLinear]. 
    Then, by using Ease(), you can use the linear amount to apply a custom ease for different values.
    The modified version of an above example could look like this:
    
    [EXAMPLE]
    
        /// ext_xy__(amount, data[x1|x2|y1|y2], target)
        {
            var _amount = argument0; // Get linear amount of time elapsed (0.0–1.0)
            var _data = argument1;
            var _target = argument2;
            
            var _x1 = _data[0], _x2 = _data[1];
            var _y1 = _data[2], _y2 = _data[3];
    
            // Update x/y position by using Ease() for each variable
            _target.x = Ease(_x1, _x2, _amount, EaseInOutQuad);
            _target.y = Ease(_y1, _y2, _amount, EaseInOutElastic);
        }
*/


