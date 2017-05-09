action_inherited(); //令人奇怪
///滚动

//爬楼梯

//背包的系统准备
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[?"数量"]

var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]



// Roll
if (onGround && !attacking) and AP-16 > 0 {
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

var LT  =instance_place(x,y,oLT)

if LT and !ChangeModeTime and !AtkTime and  !STI and ((kUp and LT.Up) or (kDown and LT.Down))and !attacking and state != ROLL and kControl 
{
x = LT.x+8
vy = 0;
vx = 0;
xscale = 1;
yscale = 1;
instance_change(oTaPuLoPa,0)
}


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
if( B[?"名字"]!="" and  A[?"名字"] != "")
 {
var H = Map[?"B"];
Map[?"B"] = Map[?"A"];
Map[?"A"] = H;
}

                       



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
				sAtk = sPlayerJab;
                sprite_index = sAtk;
                attacking = true;


                if A[?"名字"] = "斧头" {
                       instance_create(x,y-16,oAxe)
                }
				   if A[?"名字"] = "小刀" {
                       instance_create(x,y-16,oDagger)
                }
					if A[?"名字"] = "圣水" {
                       instance_create(x,y-16,oHolyWater)
                }
				 if A[?"名字"] = "回旋镖"and AP - 16>0 and !instance_exists(oBoomerang){
				 AP -=16;
                       instance_create(x,y-16,oBoomerang)
                }
				
				
                SoundPaly(SouAtk);
				
				if AS != -1//排除无限使用道具
		{
		if AS -1 >= 0 //使用后还有剩余的
			{
				A[?"数量"] = AS-1;
				
			}
		if AS -1 = 0
			{
			A[?"数量"] = AS - 1;
			A[?"名字"]  = "";
			
			//现有的 被清理后把如果备用的有 就吧备用的拿上来 
			if BN != ""
				{
					var H = Map[?"B"];
					Map[?"B"] = Map[?"A"];
					Map[?"A"] = H;
				}	
			
			}	
		}

        }
		
		
        //通常A
        if (kAction) and ! attacking and state != ROLL and kControl and AP-6>0{

                // Atk in place
                AtkMode = "S";
                image_index = 0;
                image_speed = 0.45;
				sAtk = sPlayerAtk;
                sprite_index = sAtk;
                attacking = true;
                SoundPaly(SouAtk);
                AP -= 4;
        }

        //蓄力攻击
		/*
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
                        F.sprite_index = sDagger;
                        F.mask_index = sDagger;
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
        }*/

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
                AP += 0.618/2;
        }
      //  MP += 0.025 * 0.7;
}

AP = min(MaxAP, AP);
//MP = min(MaxMP, MP);
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

