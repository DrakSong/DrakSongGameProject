/// @description  Set process counts (Backup)
/// @function  Set process counts 
/// @param Backup
/*
    This is backup for pre-draw, in case frame skipping is used
    ... or if object accidentally becomes invisible
*/

tweensProcessNumber = ds_list_size(tweens);
delaysProcessNumber = ds_list_size(delayedTweens);

// Let's make sure pre-draw event is executed
if (visible == false) { visible = true; }

/* */
/*  */
