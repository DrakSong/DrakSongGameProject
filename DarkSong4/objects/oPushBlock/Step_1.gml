var onGroundPrev = onGround;

onGround = OnGround();

cLeft  = place_meeting(x - 1, y, oBlock); 
cRight = place_meeting(x + 1, y, oBlock);

if (cLeft) 
    wallTarget = instance_place(x - 1, y, oBlock);

if (cRight) 
    wallTarget = instance_place(x + 1, y, oBlock);

if (onGround && !onGroundPrev) {
    for (var i = 0; i < 8; ++i) {
        instance_create(x + random_range(0, 32), y + 32 + random_range(-2, 2), oParticle);
    }
}

