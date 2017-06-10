/// @description scr_Pause( );
/// @function scr_Pause
/// @param  
// Insert this inside the oGame object when pausing the game

instance_deactivate_all(false);
instance_activate_object(oCursor);
    
audio_pause_all();
//particlesOff();

if (!instance_exists(oPauseMenu))
instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), oPauseMenu);

