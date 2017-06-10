/// @description / Free memory
for (var i= 0; i<ds_list_size(buttons); i++){
    var Button = ds_list_find_value(buttons, i);
    
    with(Button){
        instance_destroy();
    }
}


ds_list_destroy(buttons);



