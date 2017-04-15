action_inherited(); //令人奇怪
///滚动

///滚动部分
// Roll
if (onGround && !attacking) {
        if (state != ROLL) {
                if (kRollL) {
                        facing = -1;

                        image_index = 0;
                        image_speed = 0.5;
                        RollTrue = true;
                        sprite_index = sRoll;

                        state = ROLL;
                } else if (kRollR) {
                        facing = 1;

                        image_index = 0;
                        image_speed = 0.5;
                        sprite_index = sRoll;
                        RollTrue = true;
                        state = ROLL;

                }
        }
}
//if  RollTrue  = true
// Roll speed
if (state == ROLL) {
        //if kRight and kLeft
        image_speed = RollSpeed vx = facing * RollLong // 6 * (1 - 0.618);
        // Break out of roll
        if (!onGround || (cLeft || cRight)) {
                state = IDLE;
                if (!attacking) {
                        alarm[1] = -1;
                }
        }
}







///攻击
if Mode = 1 {
        ChangeModeTime -= 0.25;
        if ChangeModeTime = 30 {
                ChangeModeTime = 0;
                Mode = 0;
        }
}

if Mode = 0 {
        if onGround && attacking {
                vx = 0
        }
        //换模式
        if KeyGet("L", 0) and ! STI {
                ChangeModeTime++;
        }

        //轻按下换武器 
        if KeyGet("L", 1) and ChangeModeTime < 90 {
                if ChangeModeTime <= 30 {
				
				
				
                        ChangeModeTime = 0;
						 OtherAtkMode++;
                        if OtherAtkMode = OtherAtkModeMax {OtherAtkMode=0}
                       



                }
                ChangeModeTime = 0;
        }
        if ChangeModeTime > 30 {
                scrConOFF();
        }
        if ChangeModeTime = 90 {
                if KeyGet("L", 1) Mode = 1;
        }

        ChangeModeTime = min(ChangeModeTime, 90)
        //被打断就没有了
        if STI {
                ChangeModeTime = 0;
        }



        //上A
        if (kUp && kAction) and ! attacking and state != ROLL and kControl {

                // Atk in place
                AtkMode = "L";
                image_index = 0;
                image_speed = 0.25;
                sprite_index = sAtk;
                attacking = true;

                if OtherAtkMode = 0 {
                        var F = instance_create(x, y, oFT);
                        F.sprite_index = sBS;
                        F.mask_index = sBS;
                        F.hspeed = facing * 4.3;
                        F.image_xscale = facing;
						F.AtkListMax = 0;

                }
                if OtherAtkMode = 1 {
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
		
		//下A
		/*
        if (kDown && kAction) and ! attacking and state != ROLL and kControl and ! onGround {

                // Atk in place
                AtkMode = "L";
                image_index = 0;
                image_speed = 0.25;
                sprite_index = sAtk;
                attacking = true;

                if OtherAtkMode = "BS" {
                        var F = instance_create(x + facing * 8, y, oFT);
                        F.sprite_index = sBS;
                        F.mask_index = sBS;
                        if facing = -1 F.direction = (180 + 45);
                        if facing = 1 F.direction = (360 - 45);
                        F.image_angle = F.direction F.speed = 4.3;

                        F.image_xscale = facing;

                }

                SoundPaly(SouAtk);
        }
*/
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
                AtkTime+=room_speed/24;

        }
        if kActionR {
                if AtkTime > 90 {

                        AtkMode = "L";
                        image_index = 0;
                        image_speed = 0.25;
                        sprite_index = sAtk;
                        attacking = true;
                        var F = instance_create(x, y, oAtkMax);
                        F.sprite_index = sBS;
                        F.mask_index = sBS;
                        F.hspeed = facing * .4;
                        F.image_xscale = facing * 2
						F.x=x+facing*16;
						F.image_yscale = 2
  SoundPaly(SouAtk);
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
                AtkBoxL = min(x + (5 * facing), x + (20 * facing));
                AtkBoxR = max(x + (5 * facing), x + (20 * facing));
                AtkBoxU = y - 9-1;
                AtkBoxD = y - 5+1;
                AtkBoxCol = c_red AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParEnemy);
                AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParEnemyBarrage);
                AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParDecorate)
        }

        ///数值回复(不进行动作后缓慢恢复）
        if sprite_index != sRoll and ! attacking {
                AP += 100;
        }
        MP += 0.025 * 0.7;
}

AP = min(MaxAP, AP);
MP = min(MaxMP, MP);
HP = min(MaxHP, HP);
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