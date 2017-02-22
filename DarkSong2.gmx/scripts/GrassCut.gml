switch (sprite_index) {
    case sFgGrass1:
        sprite_index = choose(sFgGrass1B, sFgGrass1B, sFgGrass1C);
        instance_create(x, y - random_range(2, 6), oParticleFgGrass);
    break;
    
    case sFgGrass1B:
        sprite_index = sFgGrass1C;
        instance_create(x, y - random_range(2, 6), oParticleFgGrass);
    break;
        
    case sFgGrass2:
        sprite_index = choose(sFgGrass2B, sFgGrass2B, sFgGrass2C);
        instance_create(x, y - random_range(2, 6), oParticleFgGrass);
    break;
    
    case sFgGrass2B:
        sprite_index = sFgGrass2C;
        instance_create(x, y - random_range(2, 6), oParticleFgGrass);
    break;
        
    case sBgGrass1:
        sprite_index = choose(sBgGrass1B, sBgGrass1B, sBgGrass1C);
        instance_create(x, y - random_range(3, 9), oParticleBgGrass);
    break;
    
    case sBgGrass1B:
        sprite_index = sBgGrass1C;
        instance_create(x, y - random_range(3, 9), oParticleBgGrass);
    break;
    
    case sBgGrass2:
        sprite_index = choose(sBgGrass2B, sBgGrass2B, sBgGrass2C);
        instance_create(x, y - random_range(3, 9), oParticleBgGrass);
    break;
    
    case sBgGrass2B:
        sprite_index = sBgGrass2C;
        instance_create(x, y - random_range(3, 9), oParticleBgGrass);
    break;
}
