event_inherited();

if (!instance_exists(oControls_SetKey))
buttonSound(snd_button, snd_button2);

if (blink){
    depth = -102;
    scale = 1.5;
    color = c_white;
    
} else if (!blink){

    depth = -100;
    scale = 1.25;
    color = c_gray;
    
if (!instance_exists(oControls_SetKey))
switch(mouse){
        case mouseOver:
    /// Scale
    //Scale(1.3, 0.4);
    ScaleX(1.2, 0.2);
    ScaleY(1.4, 0.5);
    /// X&Yoff 
    //TweenVertical(8, 1);
    
    color = c_white;
    alpha = 1;
    break;
    

    case mouseLeft:
    Scale(0.95, 1);
    break;
    
    case mouseLeftP:

        /// Insert button's main function here ////
        var setKey = instance_create(x,y, oControls_SetKey);
        setKey.owner = id;
        
        controls_setKeys(num);
        
        /// Deactivate other blinks
        with(oControls_Key){ blink = false; }
        blink = true;
    break;

    case none:
            /// XY Scale
            DEFAULT_SCALE();
            
            /// XX & YY Offset
            DEFAULT_XYOFF();
    break;
   
    
}

}


