/// @description PauseMenu_Settings();
/// @function PauseMenu_Settings

//// This is to just make adding/removing Buttons from the Menu easier! 
/// You can just go to this script instead of opening all those folders to 
//  get to the create event of the controllers

halign      = fa_left;
valign      = fa_center;
mask        = sButtonMask_L;


spacing     = 0.1; // 0.05% of view_hview (vertical length of your view)
spacingC    = 0.2;

offset      = 0.25; //Space between rows
center      = 0.2; //Column Center (1st)


rowsMax     = 4;
columnsMax  = 3; 


/// Save Button Info /////

buttons = ds_list_create(); // names
keys    = ds_list_create(); 
names   = ds_list_create();

// Create Controller then add Keys in the loop
//ds_list_add(buttons, oControls_Controller);
//ds_list_add(buttons, oBack);



ds_list_add(names, "UP   ");
ds_list_add(names, "DOWN ");
ds_list_add(names, "LEFT ");
ds_list_add(names, "RIGHT");
ds_list_add(names, "ACTION 1");
ds_list_add(names, "ACTION 2");
ds_list_add(names, "JUMP    ");

ds_list_add(keys, global.Up);
ds_list_add(keys, global.Down);
ds_list_add(keys, global.Left);
ds_list_add(keys, global.Right);
ds_list_add(keys, global.Action1);
ds_list_add(keys, global.Action2);
ds_list_add(keys, global.Jump);

size  = ds_list_size(keys); //All the keys plus the Back button.

/*  Unfortunately, we cannot use the buttonArrage scripts here! 
    (buttons are created differently here)
    This isn't the best way to organize it but it gets the job done :) */

    
var space   = 1 -(offset*2);
var spacing = (space/( size-1 ));
var rowNum  = 0; //Row Counter
var colNum  = 0;

var offsetC     = 0.1;
var spacingC    = 0.5;

/// Set Button Positions //////
for (var i=0; i<size; i++){
    if (rowNum > rowsMax-1) { rowNum = 0; colNum++; }
    
    var col = offsetC + (colNum* spacingC);
    
    var button = instance_create(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* col), 
    __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* ((spacing*rowNum)+offset) ),oControls_Key);
    
    button.num = i;
    button.text = ds_list_find_value(names, i);
    button.key = ds_list_find_value(keys, i);
    button.variable = button.key;
    
    button.pos      = i;
    button.halign   = halign;
    button.valign   = valign;
    button.mask_index = mask;
    
    ds_list_add( buttons, button );
    
    rowNum++;
}


var _b  = instance_create(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5), __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* 0.9), oBack);
ds_list_add( buttons, _b );

size = ds_list_size( buttons );



//ds_list_add(buttons, oControls_Controller);
//ds_list_add(buttons, oBack);



