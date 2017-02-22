/// OnGround();

return place_meeting(x, y + 1, oParSolid) || (place_meeting(x, y + 1, oParJumpThru ) && !place_meeting(x, y, oParJumpThru));