action_inherited();
///攻击
if onGround && attacking {
        vx = 0
}

if KeyGet("L", 2) {
        if OtherAtkMode = "BS" {
                OtherAtkMode = "FT"exit;
        }
        if OtherAtkMode = "FT" {
                OtherAtkMode = "BS"exit;
        }
}
//上A
if (kUp && kAction) and ! attacking and state != ROLL and kControl {

        // Atk in place
        AtkMode = "L";
        image_index = 0;
        image_speed = 0.25;
        sprite_index = sAtk;
        attacking = true;

        if OtherAtkMode = "BS" {
                var F = instance_create(x, y, oFT);
                F.sprite_index = sBS;
                F.mask_index = sBS;
                F.hspeed = facing *4.3;
                F.image_xscale = facing;

        }
        if OtherAtkMode = "FT" {
                var F = instance_create(x, y, oFT);
                F.sprite_index = sFT;
                F.mask_index = sFT;
                //F = instance_create(x, y, oFT) ;
                F.hspeed = facing * 1.45;
                F.vspeed = -6.80;
                F.gravity = 0.5;
                F.image_xscale = facing;

        }

        SoundPaly(SouAtk);
}
if (kDown && kAction) and ! attacking and state != ROLL and kControl and !onGround {

        // Atk in place
        AtkMode = "L";
        image_index = 0;
        image_speed = 0.25;
        sprite_index = sAtk;
        attacking = true;

        if OtherAtkMode = "BS" {
                var F = instance_create(x+facing*8, y, oFT);
                F.sprite_index = sBS;
                F.mask_index = sBS;
				if facing =-1
				F.direction = (180+45);
				if facing = 1
					F.direction = (360-45);
					F.image_angle  =F.direction
                F.speed =  4.3;
				
                F.image_xscale = facing;

        }
       
        SoundPaly(SouAtk);
}




//if keyboard_check(vk_pageup) G += 0.1;
//if keyboard_check(vk_pagedown) G -= 0.1;
//if AP - 8 > 0
//通常A
if (kAction) and ! attacking and state != ROLL and kControl {

        // Atk in place
        AtkMode = "S";
        image_index = 0;
        image_speed = 0.45;
        sprite_index = sAtk;
        attacking = true;
        SoundPaly(SouAtk);
        //AP -= 8;
}

//蓄力攻击
if kActionK {
        AtkTime++

}
if kActionR {
        if AtkTime > 90 {

                AtkMode = "L";
                image_index = 0;
                image_speed = 0.25;
                sprite_index = sAtk;
                attacking = true;
                var F = instance_create(x, y, oFT);
                F.sprite_index = sBS;
                F.mask_index = sBS;
                F.hspeed = facing * 4.2;
                F.image_xscale = facing * 2 F.image_yscale = 2

        }
        AtkTime = 0;
} //蓄力期间减速
if AtkTime > 30 {
        vxMax = 1;
} else {
        vxMax = 5.5 * (1 - 0.618)
}

///攻击判定
AtkBox = 0
// Atk
if (sprite_index == sAtk and round(image_index) > 1) and AtkMode = "S" {
        AtkBoxL = min(x + (5 * facing), x + (18 * facing));
        AtkBoxR = max(x + (5 * facing), x + (18 * facing));
        AtkBoxU = y - 9;
        AtkBoxD = y - 5;
        AtkBoxCol = c_red AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParEnemy);
        AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParBarrageE);
        AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParDecorate)
}
///数值回复
if sprite_index != sRoll and ! attacking {
        AP += 100
}
MP += 0.025 * 0.7;
AP = min(MaxAP, AP) MP = min(MaxMP, MP) HP = min(MaxHP, HP)
///键入
//关闭控制后全部不可用
if kControl = false scrConOFF();
if kControl {
        kLeft = KeyGet("左", 0);
        kRight = KeyGet("右", 0);
        kUp = KeyGet("上", 0);
        kDown = KeyGet("下", 0);
        kJump = KeyGet("B", 2) and ! attacking;
        kJumpRelease = KeyGet("B", 1) kAction = KeyGet("A", 2); //and!STI;
        kActionK = KeyGet("A", 0); // and !STI ;
        kActionR = KeyGet("A", 1); //and !STI;
        kBlock = false;
        kRollL = KeyGet("R", 2) and kLeft //and(AP - 16) > 0 //and false
        kRollR = KeyGet("R", 2) and kRight //and(AP - 16) > 0 //and false
}
//滚动限制
if RollTrue = true {
        AP -= 16 RollTrue = false;
}
AP = min(MaxAP, AP)

//门碰撞系统
var D = instance_place(x, y, oDoor) if D and tightRoomGoOn = false {
        //开始跳转
        tightDRF = D.tightDRF;
        tightRM = D.tightRM;
        tightDR = D.tightDR;
        tightRoomGoOn = true;
        room_goto(tightRM)
}