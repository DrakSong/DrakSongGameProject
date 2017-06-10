event_inherited();

switch(mouse){

    case mouseLeftR:
        /// Insert button's main function here ////
        
        
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), oControls_Controller);
        
        with(oPauseMenu) { instance_destroy(); }
        
    break;

}

