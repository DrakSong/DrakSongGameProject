event_inherited();

//// HOW THE BUTTON REACTS
switch(mouse){

    case mouseOver:
    /// Scale
    //Scale(1.3, 0.4);
    ScaleX(1.3, 0.1 );
    ScaleY(1.4, 0.1 );
    /// X&Yoff 
    TweenVertical( 7, 1);
    
    color = c_white;
    alpha = 1;
    break;
    
    
    case mouseLeftP:
        ScaleY( 0.5,   0.33 );
        ScaleX( 0.5,   0.33 );
    
    break;
    
    
    case mouseLeft:
    Scale( 0.8, 0.33 );
    break;
    
    //// EXECUTE BUTTON'S COMMAND ////
    case mouseLeftR:
    break;
    
    case none:
    /// XY Scale
    //DEFAULT_SCALE();
    Scale( 1, 1 );
    
    /// XX & YY Offset
    DEFAULT_XYOFF();
    
    
    /// Color
    color = c_gray;
    /// Alpha
    alpha = .8;
    
    break;
    
}


