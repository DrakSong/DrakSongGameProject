/// @description scr_ParController_Create( );
/// @function scr_ParController_Create
/// @param  

/// Set and control button states over here! 

text = "";
scale = 2.5;

// Button hoverOver rectangle
buttonHeight    = 40;
global.buttonPos  = 0; // Used to choose which button is hovered over
global.buttonId   = ds_list_find_value( buttons, global.buttonPos ); //Save ID of button
//global._tempButtonId     = global.buttonId;



//////// BUTTON STATES /////////// 
none        = 0;
mouseOver   = 1; // mouse X/Y over collision mask
mouseLeft   = 2; // mouseLeftButton is pressed
mouseLeftP  = 3;
mouseLeftR  = 4; // mouseLeftReleased 
mouse       = none;
mouseOverTrigger  = false; // not used for now
mouseLeftP_Trigger = false;



load_all();
