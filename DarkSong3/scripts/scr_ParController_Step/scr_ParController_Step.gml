
//  When any key is pressed, change & adjust the specified button.
if (keyboard_check_pressed(vk_anykey)){

switch( keyboard_lastkey ){
    case global.Right:
    if (columnsMax>1){
        if (global.buttonPos+rowsMax < size-1){
            global.buttonPos+= rowsMax;
        }
    }
    break;
    
    case global.Left:
    if (columnsMax>1){
        if (global.buttonPos > rowsMax-1){
            global.buttonPos-= rowsMax;
        }
    }
    break;
    
    case global.Up:
        global.buttonPos--;
        if (global.buttonPos < 0){
            global.buttonPos = size-1;
        }
   break;
    
    case global.Down:
        global.buttonPos++;
        if (global.buttonPos> size-1){
            global.buttonPos = 0;
        }
    break;

}

global.buttonId   = ds_list_find_value( buttons, global.buttonPos ); //Save ID of button

}


/*
///     SET BUTTON STATES       ///
with( global.buttonId ){
     active = true;
    
    // Same thaaanggg as the oParButton Step Event
        if ( keyboard_check_pressed( other.kKey )){ // the key used is referenced in the Create script!
        mouse = mouseLeftP;
        mouseLeftP_Trigger = true;   
    } else if ( keyboard_check( other.kKey )){
        if (mouseLeftP_Trigger)
        mouse = mouseLeft;

     } else if ( keyboard_check_released( other.kKey )){
        mouse = mouseLeftR;
        if (mouseLeftP_Trigger){
        mouse = mouseLeftR;
        
        mouseLeftP_Trigger = false;
        }
    }
    
    buttonSound( global.sound1, global.sound2 );
    
}


// Ensure the non selected buttons are getting Reset! 
for(var i=0;i<instance_number(oParButton);i++){
    var b   = instance_find(oParButton, i );
    
    if (b != global.buttonId){
        mouse = none;
        mouseLeftP_Trigger = false;
    } else {
        //mouse = mouseLeftP;
    }
    
}
*/



