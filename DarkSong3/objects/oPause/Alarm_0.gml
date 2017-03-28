
surface_set_target(surf_pause);
draw_enable_alphablend(false);
draw_clear_alpha(c_black, 0);
draw_surface(application_surface,0,0);
draw_enable_alphablend(true);
surface_reset_target();

instance_deactivate_all(true);

