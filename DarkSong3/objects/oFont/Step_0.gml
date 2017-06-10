event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        if (variable < (array_length_1d(global.fonts)-1) )
            variable++;
        else
            variable = 0;
        
        // Name your fonts!    
        switch(variable){
            case 0:
                text2 = "ZBG";
            break;
            
            case 1:
                text2 = "JASONTOMLEE";
            break;
            
            case 2:
                text2 = "SOMEPX";
            break;
                
            
        
        }
        
        global.fontNum = variable;
        
    break;
    
}

