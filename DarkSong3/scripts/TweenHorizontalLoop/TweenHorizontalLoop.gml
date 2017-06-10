/// @description TweenHorizontalLoop(Yoff_Min, Yoff_Max, shift);
/// @function TweenHorizontalLoop
/// @param Yoff_Min
/// @param  Yoff_Max
/// @param  shift


    var Xoff_Min = argument0;  /// DOWNWARDS
    var Xoff_Max = argument1;  /// UPWARDS
    var shift = argument2;     /// SHIFT SPEED 

    if (scaleDir == 1) Xoff += shift; else Xoff -= shift;
    if (Xoff <= Xoff_Min) scaleDir = 1;
    if (Xoff >= Xoff_Max) scaleDir = 0;
    
    xx = Step(xx,x+Xoff,shift);
    yy = Step(yy,y,shift);
    
    
    
