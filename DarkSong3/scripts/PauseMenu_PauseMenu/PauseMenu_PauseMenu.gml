/// @description / Set PauseButton positions /////
// You can manually input the positions too but I prefer using loops to set them ///

halign      = fa_center;
valign      = fa_center;
mask        = sButtonMask_C;


spacing     = 0.15; // 0.05% of view_hview (vertical length of your view)
spacingC    = 0.2;

center      = 0.5;
rowsMax     = 6;
columnsMax  = 1; 



/// Save Button Info /////

buttons = ds_list_create(); // names
ds_list_add(buttons, oResume);
ds_list_add(buttons, oSettings);
ds_list_add(buttons, oSounds);
ds_list_add(buttons, oControls);
ds_list_add(buttons, oQuit);


size = ds_list_size(buttons);

/// Set Button Positions //////
buttonArrange_();





