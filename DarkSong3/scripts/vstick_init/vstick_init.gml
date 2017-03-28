///vstick_init(stick_id,x,y,r,square_calculation,backsprite,frontsprite)
/*
WARNING!: The virtual joysticks use the globalvar vstick to hold the array. 
Please do not use this variable elsewhere in your game, as it will cause conflicts.

This script adds a joystick with a given id.

stick_id:           The id to be given to the stick. This can be any integer value, but should be unique to each joystick.

x,y:                The x and y values are relative to the GUI layer, as the vstick_draw function is supposed 
                    to be called in the GUI_draw event.

r:                  The radius of the joystick.

square_calculation: If enabled, it will map out the values on the dpad from -1 to 1 (follows GM's axis) 
                    over the entire circle, instead of the actual x and y values (very much like on a gamepad).
                    
backsprite:         In case you want to use a background sprite for the thumbstick, instead of the default coded variant. The origin should be the center of the dpad.
                    If you don't have a sprite for this, set this value to noone.
                    
frontsprite:        The sprite for the actual stick itself. Works like the backsprite.
*/

globalvar vstick;
vstick[argument0,0]=0;//vstick xaxis
vstick[argument0,1]=0;//vstick yaxis
vstick[argument0,2]=argument3;//vstick radius
vstick[argument0,3]=argument1;//vstick x
vstick[argument0,4]=argument2;//vstick y
vstick[argument0,5]=1;//vstick active
vstick[argument0,6]=0;//vstick drag --> vstick_check
vstick[argument0,7]=-1;//vstick device id
vstick[argument0,8]=0;//vstick direction in radians
vstick[argument0,10]=argument4;//square calculation
vstick[argument0,11]=0;//draw_xaxis
vstick[argument0,12]=0;//draw_yaxis
vstick[argument0,13]=argument5;//vstick backsprite
vstick[argument0,14]=argument6;//vstick frontsprite
vstick[argument0,15]=0; //vstick_check_pressed
vstick[argument0,16]=0; //vstick_check_released

