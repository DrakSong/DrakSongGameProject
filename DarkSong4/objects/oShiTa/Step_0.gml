#region 检测玩家存在不 以及同步信息
if  instance_exists(oTaPuLo)
{


if !attacking {//攻击期间不动
facing = oTaPuLo.facing
x = oTaPuLo.x - facing*16
y = oTaPuLo.y
}
}
#endregion

#region 按钮控制检测
if (self.kControl) {
	self.kLeft = KeyCheck("左","按住")
	self.kRight = KeyCheck("右","按住")
	self.kUp = KeyCheck("上","按住")
	self.kDown =KeyCheck("下","按住")
	self.kJump = (KeyCheck("跳跃","按下")) and ! (self.attacking);
	self.kJumpRelease = (KeyCheck("跳跃","松开"));
	self.kActionP =(KeyCheck("攻击2","按下"));
	self.kActionK =(KeyCheck("攻击2","按住"))
	self.kActionR = (KeyCheck("攻击2","松开"))
	self.kRoll = (KeyCheck("特殊键","按下"));
} else {
	self.kLeft = 0;
	self.kRight = 0;
	self.kUp = 0;
	self.kDown = 0;
	self.kJump = 0;
	self.kJumpRelease = 0;
	self.kActionP = 0;
	self.kActionK = 0;
	self.kActionR = 0;
	self.kRoll = 0;
};
#endregion
#region 攻击发射部分

AtkTime = min(AtkTime,60)//设置蓄力上限
#region 吃灰  呼叫使用大型魔法（关闭）

if false {
	//按下启动
	if (kActionP and kUp) and ! attacking and true and kControl and onGround {
		AtkMode = "大型魔法"image_index = 0;
		image_speed = 0;
		sprite_index = sAtk;
		attacking = true;
		AtkTime++;
	};
	//持续
	if (kActionK) and attacking and true and kControl and AtkTime and AtkMode = "大型魔法" {
		C = c_red AtkTime++;

	}
	//松开发射
	if (kActionR) and attacking and true and kControl and AtkTime and image_index = 0 and AtkMode = "大型魔法" {

		image_index = 1;
		image_speed = 0.25;
		var M = MagicList[| 0];
		var N = M[? "成功蓄力"];

		if AtkTime > 30 {

			var A = instance_create(self.x, self.y - 16, N);
			A.facing = facing;
			A.hspeed = A.facing * 3 A.image_xscale = 1 * facing A.image_xscale = 2 * facing A.image_yscale = 2
		}

		AtkUse = true;
	}

};
#endregion
#region 蓄力和飞蓄力的魔法攻击
// 攻击  按下（长短） +	松开发射 （大小） 火球
if true {
	if (kActionK) and ! attacking and true and kControl {

		AtkMode = "小型魔法";
		image_index = 0;
		image_speed = 0;
		sprite_index = sAtk;
		attacking = true;
		AtkTime++;
		oTaPuLo.MP -= 7
		//空中瞬发无法蓄力 和使用大型魔法
		if onGround and false {
			image_speed = 0.25;

		}
	}
	//持续
	if (kActionK) and attacking and true and kControl and AtkTime and AtkMode = "小型魔法" {
		
		C = (c_blue) AtkTime++;

	}
	//松开发射
	if (kActionR) and attacking and true and kControl and AtkTime and image_index = 0 and AtkMode = "小型魔法" {

		image_index = 1;
		image_speed = 0.25;

		var M = MagicList[| 0]; //读取对应元素 现在默认搓火球
		var N = M[?"小型魔法"]
		switch (N) {
		//火球
		case(oFireball):
			var A = instance_create(self.x, self.y, oFireball);
			A.facing = facing;
			A.hspeed = A.facing * 3 A.image_xscale = 1 * facing
			if AtkTime = 60 {
				A.image_xscale = 1.5 * facing A.image_yscale = 1.5

			}
			break;
		//冰锥
		case (oIce):
			if AtkTime < 60 {
				var val = 3;
				for (var i = 0; i < val; i++) {
					var A;
					A[i] = instance_create(self.x + facing * 1 * i + facing * 8, self.y - i * 4-4, oIce);
					A[i].facing = facing;
					A[i].speed = 3;
					//A[i].image_xscale = 1*facing
					if facing = 1 //右边
					{
						A[i].direction = 0 + i * 6;
						A[i].image_angle = A[i].direction;
					}
					if facing = -1 {
						A[i].direction = 180 - i * 6 A[i].image_angle = A[i].direction;
					}

				}
			}

			if AtkTime = 60 {

				var val = 6;
				for (var i = 0; i < val; i++) {
					var A;
					A[i] = instance_create(self.x + facing * i * 1 + facing * 8, self.y - i * 4-4, oIce);
					A[i].facing = facing;
					A[i].speed = 3
					//A[i].image_xscale = 1*facing
					if facing = 1 //右边
					{
						A[i].direction = 0 + i * 3;
						A[i].image_angle = A[i].direction;
					}
					if facing = -1 {
						A[i].direction = 180 - i * 3 A[i].image_angle = A[i].direction;
					}

				}
			}
			break;

			//default:
			//	break;
		//旋风
		case(oCyclone):
			var A = instance_create(self.x, self.y-8, oCyclone);
			A.facing = facing;
			A.hspeed = A.facing * 1.5;
			 A.image_xscale = 1 * facing;
			if AtkTime = 60 {
				A.image_xscale = 2* facing ;
				A.image_yscale = 2;
				A.y=A.y-4;

			}
			break;
		//地面突刺
		case(oThorn):
			var A = instance_create(self.x+16*facing, self.y-8, oThorn);
			A.facing = facing;
			//A.hspeed = A.facing * 1.5;
			 A.image_xscale = 1 * facing;
			if AtkTime = 60 {
				A.image_xscale = 2* facing ;
				A.image_yscale = 2;
				A.y=A.y-4;

			}
			break;
		}

		AtkUse = true;
	}
};
#endregion
#region//辅助键 发动辅助技能
if true {
	if (kRoll) and ! attacking and true and kControl {

		AtkMode = "辅助魔法"image_index = 0;
		image_speed = 0.25;
		sprite_index = sAtk;
		attacking = true;

		var M = MagicList[| 0];
		var N = M[? "辅助魔法"]
		var A = instance_create(self.x, self.y - 16, N);

	}
};
#endregion
#endregion