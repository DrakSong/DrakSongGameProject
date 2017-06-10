
/// Mouse states
if ( position_meeting(mouse_x,mouse_y,id) || global.buttonId == id ) {
    global.buttonId     = id;
    global.buttonPos    = pos;

    if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(global.kKey) ){
        mouse = mouseLeftP;
        mouseLeftP_Trigger = true;   
    } else if (mouse_check_button(mb_left) || keyboard_check(global.kKey) ){
        if (mouseLeftP_Trigger)
        mouse = mouseLeft;

     } else  if (mouse_check_button_released(mb_left) || keyboard_check_released(global.kKey) ){
        
        if (mouseLeftP_Trigger){
        mouse = mouseLeftR;
        
        mouseLeftP_Trigger = false;
        }
        
    }
     else if (mouseLeftP_Trigger){
        mouse = mouseLeft;
    } else {
        mouse = mouseOver;
    }
    
    
} else {
    //mouse = none;
    if (!mouse_check_button( mb_left ))  //make sure to reset this if your Cursor moves+ still holding LeftMouse
    mouseLeftP_Trigger = false;
   
    //if (global.buttonId != other.id )
    mouse = none;
}

buttonSound( global.sound1, global.sound2 );

/*
/// Mouse Over
//if (place_meeting(x,y,oCursor) ){
if (position_meeting(mouse_x,mouse_y,id)){

    mouse = mouseOver;

    /// Left Pressed
      if (mouse_check_button_pressed(mb_left)){
        mouse = mouseLeftP;
    } else if (mouse_check_button(mb_left)){
        mouse = mouseLeft;   
    } else if (mouse_check_button_released(mb_left)){
            mouse = mouseLeftR;  
        
    }
} else {
    mouse = none;
}
*/


/* */
/*  */
