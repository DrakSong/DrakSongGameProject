surface_set_target(first_pass_surface);
    draw_clear_alpha(c_black,0);
    with (obj_light_source) event_perform(ev_draw,0); //Draw the light source
    gpu_set_blendmode(bm_subtract);
    with (par_uses_rays) event_perform(ev_draw,0); //Draw everything thats need to be in fron of the light, use the par_uses_rays parent
    gpu_set_blendmode(bm_normal);
surface_reset_target();


