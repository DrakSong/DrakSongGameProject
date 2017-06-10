

scr_ParController_Step( );


var kEsc = keyboard_check_pressed(global.Escape);

if (kEsc){
    if (!instance_exists(oControls_SetKey))
    instance_destroy();
}





