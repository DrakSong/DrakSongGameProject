event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        if (variable){
            variable = false;
            text2    = "OFF";
        } else if (!variable){
            variable = true;
            text2 = "ON";
        }
        
        global.shakeScreen = variable;
        
    break;
    
}

