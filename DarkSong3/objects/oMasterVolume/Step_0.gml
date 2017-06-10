event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        if (variable < 100)
        variable+= 10;
        else
        variable = 0;
        
        /// Apply changes
        audio_master_gain(global.masterVolume/100);
        
        
        text2 = string(variable);
        global.masterVolume = variable;
        
        
    break;
    
}

