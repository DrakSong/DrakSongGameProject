event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        
        /// When you're in a Menu, destroy the controller 
        /// to go back to the main PauseMenu
        with(oParController){
            instance_destroy();
        }
        
        
    break;
    
}

