/// @description TweenDir(Xoff_Min, Xoff_Max, X_shift, Yoff_Min, Yoff_Max, Y_shift);
/// @function TweenDir
/// @param Xoff_Min
/// @param  Xoff_Max
/// @param  X_shift
/// @param  Yoff_Min
/// @param  Yoff_Max
/// @param  Y_shift

    var Xoff_Min = argument0;  /// DOWNWARDS
    var Xoff_Max = argument1;  /// UPWARDS
    var shift = argument2;     /// X SHIFT
    var Yoff_Min = argument3;  /// DOWNWARDS
    var Yoff_Max = argument4;  /// UPWARDS
    var shift2 = argument5;     /// X SHIFT
    
    
    /// X TWEEN 
    if (scaleDir == 1) Xoff += shift; else Xoff -= shift;
    if (Xoff <= Xoff_Min) scaleDir = 1;
    if (Xoff >= Xoff_Max) scaleDir = 0;
    /// Y TWEEN
    if (scaleDir2 == 1) Yoff += shift2; else Yoff -= shift2;
    if (Yoff <= Yoff_Min) scaleDir2 = 1;
    if (Yoff >= Yoff_Max) scaleDir2 = 0;
    
    
    xx = Step(xx,x+Xoff,shift);
    yy = Step(yy,y-Yoff,shift2);
    
    
    
