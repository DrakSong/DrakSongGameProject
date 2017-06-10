event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        
        game_end();
        instance_destroy();
        
        with(oPauseMenu) { instance_destroy(); }
        
    break;
    
}

