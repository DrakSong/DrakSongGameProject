var playerAbovePrev = playerAbove;
playerAbove         = place_meeting(x, y - 1, oParPlayer);

// If it's the first frame of player contact
if (playerAbove && !playerAbovePrev) {
    xscale = 1.34;
    yscale = 0.67;
    
    // Flip directions
    if (image_index == 0)
        image_index = 1;
    else
        image_index = 0;
}

// Set speed according to image (arrows on platform)
if (playerAbove) {
    if (image_index == 0)
        vx = -spd;
    else
        vx = spd;
} else {
    vx = 0;
}

