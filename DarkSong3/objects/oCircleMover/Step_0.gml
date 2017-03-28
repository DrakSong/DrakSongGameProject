speed = spd;

s = speed;
a = sqr(speed) / (radius * 2); //10 pixel large circle
motion_add(direction + 90, a);
speed = s;

// Using speed for the ease of motion_add()
// Can remove this excess stuff if you right your own vector addition
spd = speed;
speed = 0;

vx = lengthdir_x(spd, direction);
vy = lengthdir_y(spd, direction);

