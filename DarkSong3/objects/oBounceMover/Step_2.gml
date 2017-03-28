var vxNew, vyNew;

// Handle sub-pixel movement
cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;

repeat (abs(vyNew)) {
    if ((y + sign(vyNew) >= ystart) && (y + sign(vyNew) <= (ystart + abs(vy)))) {
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
        if (vy >= 0)
            vy *= -1;
        else
            vy *= -0.75;
        break;
    }
}

repeat(abs(vxNew)) {
    if (!place_meeting(x + sign(vxNew), y, oParSolid)) {
        with (oParEntity) {
            if (place_meeting(x - sign(vxNew), y, other.id))
                x += sign(vxNew);
                
            if (place_meeting(x + sign(vxNew), y, other.id) && wallTarget == other.id)
                x += sign(vxNew);    
            
            if (platformTarget != other.id)
                continue;
                
            if (!platformTarget) {
                if (place_meeting(x, y + 1, other.id))
                    platformTarget = other.id;
            }
            
            if (!place_meeting(x + sign(vxNew), y, oParSolid) && platformTarget == other.id)
                x += sign(vxNew);
        }
        x += sign(vxNew);
    }
    else
        vx *= -1;
}

/// Procedural Animation

xscale = Approach(xscale, 1, 0.033);
yscale = Approach(yscale, 1, 0.033);

