{
	action_inherited();
///攻击
if onGround && attacking {
    vx = 0
}
if (kUp && kAction) and ! attacking and state != ROLL and AtkHit = 0 {
    {
        // Atk in place
        {
            AtkMode = "L"image_index = 0;
            image_speed = 0.25;
            sprite_index = sAtk;
            attacking = true;
            F = instance_create(x, y, oFT) F.hspeed = facing * 3;
            //SoundPaly(SouAtk);
        }
    }
}
if AP - 8 > 0
if (!kBlock && kAction) and ! attacking and state != ROLL and AtkHit = 0 {
    {
        // Atk in place
        {
            AtkMode = "S"image_index = 0;
            image_speed = 0.45;
            sprite_index = sAtk;
            attacking = true;
            SoundPaly(SouAtk) AP -= 8;
        }
    }
}
///攻击判定
AtkBox = 0
// Atk
if (sprite_index == sAtk and round(image_index) > 1) and AtkMode = "S" {
    AtkBoxL = min(x + (5 * facing), x + (30 * facing));
    AtkBoxR = max(x + (5 * facing), x + (30 * facing));
    AtkBoxU = y - 8;
    AtkBoxD = y;
    AtkBoxCol = c_red AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParEnemy); 
	AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParBarrageE) ;
	AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParDecorate)
}
/* 
   if (sprite_index == sAtk && (image_index) > 2.9) and AtkMode = 'S' 
   {
  ds_list_clear(AtkList)
  show_message('12')
   }
/* */
///数值回复
if sprite_index != sRoll and ! attacking {
    AP += 100
}
MP += 0.025 * 0.7;
AP = min(MaxAP, AP) MP = min(MaxMP, MP) HP = min(MaxHP, HP)
/* */
///键入
//关闭控制后全部不可用
if kControl = false scrConOFF();
if kControl {
    kLeft = KeyGet("左", 0) kRight = KeyGet("右", 0)
    kUp = KeyGet("上", 0) kDown = KeyGet("下", 0)
    kJump = KeyGet("B", 2) and ! attacking kJumpRelease = KeyGet("B", 1)
    kAction = KeyGet("A", 2) kActionK = KeyGet("A", 0) kActionR = KeyGet("A", 1)
    kBlock = false kRollL = KeyGet("R", 2) and kLeft and(AP - 16) > 0 //and false
    kRollR = KeyGet("R", 2) and kRight and(AP - 16) > 0 //and false
}
//滚动限制
if RollTrue = true {
    AP -= 16 RollTrue = false;
}
AP = min(MaxAP, AP)
/* */
/*  */
/**/
}
var D = instance_place(x,y,oDoor)
if D and tightRoomGoOn = false
{
//show_message(D.id)

//开始跳转
tightRM = D.tightRM;
tightDR = D.tightDR;
tightRoomGoOn = true;
room_goto(tightRM ) 
}




//room_goto_previous()