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

offset      = 0.2; //Space between rows
center      = 0.2; //Column Center (1st)

rowsMax     = 5;
columnsMax  = 2; 


/// Save Button Info /////

buttons = ds_list_create(); // names
ds_list_add(buttons, oScreenScale);
ds_list_add(buttons, oShakeScreen);
ds_list_add(buttons, oFogEffect);
ds_list_add(buttons, oFont);
ds_list_add(buttons, oBack);



size = ds_list_size(buttons);


/// Set Button Positions //////
buttonArrange_();

