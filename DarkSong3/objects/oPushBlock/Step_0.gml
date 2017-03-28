// Apply the correct form of acceleration and friction
if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}

if (!onGround) {
    // Fall normally
    vy = Approach(vy, vyMax, gravNorm);
}

