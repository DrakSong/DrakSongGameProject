var vxNew, vyNew;

// Handle sub-pixel movement
cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;

repeat (abs(vyNew)) {
    if (place_meeting(x, y + (sign(vyNew) * sprite_height), oParRail)) {
        with (oParEntity) {
            if (place_meeting(x, y + 1, other.id)) {
                if (!PlaceMeetingException(x, y + sign(vyNew), oParSolid, other.id))
                    y += sign(vyNew);
            }
            
            if (place_meeting(x, y - 1, other.id))
                y += sign(vyNew);
            
        }
        y += sign(vyNew);
    }
    else {
        xscale = 1.34;
        yscale = 0.67;
        
        vy *= -1;
        break;
    }
}

/// Procedural Animation

xscale = Approach(xscale, 1, 0.1);
yscale = Approach(yscale, 1, 0.1);

