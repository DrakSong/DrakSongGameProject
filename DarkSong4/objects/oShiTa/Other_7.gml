
//攻击复位
if (sprite_index == sAtk)
{  
    attacking = false;
	AtkUse = false;
	AtkTime = false;
	AtkMode = ""
    }
	
	
//滚动复位
if (sprite_index == sRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;

}



