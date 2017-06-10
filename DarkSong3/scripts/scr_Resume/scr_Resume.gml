/// @description scr_Resume( );
/// @function scr_Resume
/// @param  

// Insert this inside the oResume & oPauseMenu objects when resuming the game

with(oPauseMenu){
    instance_destroy();
}

instance_activate_all();
audio_resume_all();


