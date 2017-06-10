event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        if (variable < 100)
        variable+= 10;
        else
        variable = 0;
        
        /// Apply changes
        audio_group_set_gain(Effects, global.effectsVolume/100, 1);
      
        
        text2 = string(variable);
        global.effectsVolume = variable;
        
        
    break;
    
}

