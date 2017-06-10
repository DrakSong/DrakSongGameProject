/// @description TweenVerticalLoop(Yoff_Min, Yoff_Max, shift);
/// @function TweenVerticalLoop
/// @param Yoff_Min
/// @param  Yoff_Max
/// @param  shift


    var Yoff_Min = argument0;  /// DOWNWARDS
    var Yoff_Max = argument1;  /// UPWARDS
    var shift = argument2;     /// SHIFT SPEED 

    if (scaleDir2 == 1) Yoff += shift; else Yoff -= shift;
    if (Yoff <= Yoff_Min) scaleDir2 = 1;
    if (Yoff >= Yoff_Max) scaleDir2 = 0;
    
    xx = Step(xx,x,shift);
    yy = Step(yy,y-Yoff,shift);
    
    
    
