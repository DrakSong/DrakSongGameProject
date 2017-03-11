var playerAbovePrev = playerAbove;
playerAbove         = place_meeting(x, y - 1, oParPlayer);

// If it's the first frame of player contact
if (playerAbove && !playerAbovePrev) {
    xscale = 1.34;
    yscale = 0.67;
    
    vy = fallSpd;
}

