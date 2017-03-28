jumped = false;
landed = false;

platformTarget = 0;
wallTarget     = 0;

push = false;

// Velocity
vx = 0;
vy = 0;

// Used for sub-pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
cLeft    = place_meeting(x - 1, y, oBlock);
cRight   = place_meeting(x + 1, y, oBlock);

push = true;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 0.00;
groundFric  = 3.00;
airAccel    = 0.75 * 2;
airFric     = 0.01 * 2;
vxMax       = 6.50;
vyMax       = 15.0;
gravNorm    = 0.50;


