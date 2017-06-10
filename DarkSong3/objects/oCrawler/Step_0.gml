if (!place_meeting(x + lengthdir_x(speed + 1, direction - 90), y + lengthdir_y(speed + 1, direction - 90), oParSolid)) {
    direction -= 90;
    
    x += hspeed;
    y += vspeed;
    
    move_contact_solid(direction - 90, speed);
}

// Else, check if we've run into a wall
else if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), oParSolid)) {
    
    direction += 90;
    move_contact_solid(direction - 90, speed);
}

switch (direction) {
    case 0:
        vx = 1;
        vy = 0;
    break;
    
    case 90:
        vx = 0;
        vy = -1;
    break;
    
    case 180:
        vx = -1;
        vy = 0;
    break;
    
    case 270:
        vx = 0;
        vy = 1;
    break;
}

x += vx;
y += vy;

