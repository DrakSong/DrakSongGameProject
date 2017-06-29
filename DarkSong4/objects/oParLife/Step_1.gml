var onGroundPrev = onGround;

event_inherited();

if (onGround && !onGroundPrev) {
    for (var i = 0; i < 4; ++i) {
       // instance_create(x + random_range(-8, 8), y  + random_range(-2, 2), oParticle);
    }
    
    xscale = 1.33;
    yscale = 0.67;
}

