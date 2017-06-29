///结算硬质
//进入硬直
if STITime > 0 {
        STI = true;
        STITime -= 1;
} else {
	
        STI = false;
        STITime = 0;
		
		if sprite_index = sInjured and STI
		{
			state  = IDLE;
		}
}



//硬直期间
if STI {
AtkTime = 0; //打断蓄力
attacking = false;
kLeft        = false;
kRight       = false;
kUp          = false;
kDown        = false;

kJump        = false;
kJumpRelease = false;

kAction      = false;
kActionK     = false;
kActionR     = false;

kBlock       = false;

kRollL       = false;
kRollR       = false;
self.sprite_index=self.sInjured

        kControl = false;
} else {


        kControl = true;
		
		
}
//进入无敌
//show_debug_message(INVTime)
if INVTime > 0  {
        INV = true;
        INVTime -= 1;
}

if INVTime = 0 and INV = true {
        INV = false;
        INVTime = 0;
}



/// Entity Step 2.0
/// EntityStep();
jumped = false;
landed = false;

if (vy < 1 && vy > -1) PlatformCheck();
else repeat(abs(vy)) {
        if (!PlatformCheck()) y += sign(vy);
        else break;
}

if (platformTarget) {
        if (!onGround) landed = true;

        if (landed) with(platformTarget) other.vy = 0;
        else with(platformTarget) other.vy = 0;
}

repeat(abs(vx)) {
        if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 1, oParSolid)) y -= 1;

        if (place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid)) y += 1;

        // Push block // //推动石头
        if (place_meeting(x + sign(vx), y, oPushBlock))and CanPushBlock {
                // Push slowly
                vx = clamp(vx, -0.5, 0.5);
				if !instance_place(x + sign(vx)+16, y, oParEnemy) and !instance_place(x + sign(vx)+16, y, oParPlayer)//加入另一边没有怪物或者玩家 才能推
                with(instance_place(x + sign(vx), y, oPushBlock)) {
                        // UP slope
                        if (place_meeting(x + sign(other.vx), y, oParSolid) && !place_meeting(x + sign(other.vx), y - 1, oParSolid))--y;

                        // DOWN slope
                        if (!place_meeting(x + sign(other.vx), y, oParSolid) && !place_meeting(x + sign(other.vx), y + 1, oParSolid) && place_meeting(x + sign(other.vx), y + 2, oParSolid))++y;

                        if (!place_meeting(x + sign(other.vx), y, oParSolid)) x += sign(other.vx);
                        else {
                                other.h = 0;
                                break;
                        }
						
                }
        } // End push block //          
        if (!place_meeting(x + sign(vx), y, oParSolid)) x += sign(vx);
        else vx = 0;
}

