event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        if (variable < 2)
        variable += 0.5;
        else
        variable = 1;
        
        text2 = string(variable)+ "X";
        global.screenScale = variable;
        
        
    break;
    
}

