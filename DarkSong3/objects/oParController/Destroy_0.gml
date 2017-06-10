/// @description / Delete all buttons & Free up Memory

for (var i= 0; i<ds_list_size(buttons); i++){
    var Button = ds_list_find_value(buttons, i);
    
    with(Button){
        instance_destroy();
    }
}

ds_list_destroy(buttons); //free up memory
save_all(); /// Save all changes made 


instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), oPauseMenu);


