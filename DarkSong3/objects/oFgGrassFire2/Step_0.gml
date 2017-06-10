event_inherited();

// Flame
if (random(100) > 33)
    instance_create(x, y - random_range(0, 3), oFxFlame);
    
// Spread fire   
with (oFgGrass1)
    if (distance_to_object(other) < 16)
        if (random(100) > 95)
            instance_change(oFgGrassFire1, true);
        
with (oFgGrass2)
    if (distance_to_object(other) < 16)
        if (random(100) > 95)
            instance_change(oFgGrassFire2, true);



