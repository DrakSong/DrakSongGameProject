/// @description Insert description here
// You can write your code in this editor
//攻击复位
if (sprite_index == sAtk)
{  
    attacking = false;
	AtkUse = false;
	image_index = 0
    }
	
	
//滚动复位
if (sprite_index == sRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;

}



