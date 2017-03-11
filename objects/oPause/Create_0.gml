
global.pause = true; //variable to know when the pause is active
surf_pause = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));//Create surface
gui_width = __view_get( e__VW.WView, 0 );
gui_height = __view_get( e__VW.HView, 0 );

surface_set_target(surf_pause);
draw_clear_alpha(c_black,0); // Clears surface.
draw_enable_alphablend(false);
draw_surface(application_surface,0,0);
draw_enable_alphablend(true);
surface_reset_target();

instance_deactivate_all(true); //deactivate all other instances

