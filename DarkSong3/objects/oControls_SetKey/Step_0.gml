/// @description  Delete

if (  mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right) 
    || keyboard_check_pressed(global.Escape) || keyboard_check_pressed( global.kKey )  ) {
    instance_destroy();
}



