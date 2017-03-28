
//Draw the surface
if(surface_exists(surf_pause)){
    draw_enable_alphablend(false);
    draw_surface(surf_pause, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    draw_enable_alphablend(true);
    
} else {
    surf_pause = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
    alarm[0] = 1;
}


