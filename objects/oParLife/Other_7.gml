//攻击复位
if (sprite_index == sAtk)
{  
    attacking = false;
  ds_list_clear(AtkList)
    }
//滚动复位
if (sprite_index == sRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;
//if kRight and kLeft
 //{ kRight= 0 kLeft = 0}
// if kLeft and kRight {kLeft = false ; kRight = false;}
}

