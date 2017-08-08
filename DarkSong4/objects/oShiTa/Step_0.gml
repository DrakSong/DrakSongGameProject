//继承运动
action_inherited()
AtkTime = min(AtkTime,60)
//按钮控制
if (self.kControl) {
	self.kLeft = keyboard_check(global.kLeft);
	self.kRight = keyboard_check(global.kRight);
	self.kUp = keyboard_check(global.kUp);
	self.kDown = keyboard_check(global.kDown);
	self.kJump = (keyboard_check_pressed(global.kJump)) and ! (self.attacking);
	self.kJumpRelease = keyboard_check_released(global.kJump);
	self.kActionP = keyboard_check_pressed(global.kAttack);
	self.kActionK = keyboard_check(global.kAttack);
	self.kActionR = keyboard_check_released(global.kAttack);
	self.kRoll = keyboard_check_pressed(global.kRoll);
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
//上+攻击 长按 完全咏唱 松开发射 大型aoe魔法 aoe 魔法还在期间 不能动弹 能切换出塔普罗继续攻击 
if false {
	//按下启动
	if (kActionP and kUp) and ! attacking and state != ROLL and kControl and onGround {
		AtkMode = "大型魔法"image_index = 0;
		image_speed = 0;
		sprite_index = sAtk;
		attacking = true;
		AtkTime++;
	};
	//持续
	if (kActionK) and attacking and state != ROLL and kControl and AtkTime and AtkMode = "大型魔法" {
		C = c_red AtkTime++;

	}
	//松开发射
	if (kActionR) and attacking and state != ROLL and kControl and AtkTime and image_index = 0 and AtkMode = "大型魔法" {

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
// 攻击  按下（长短） +	松开发射 （大小） 火球
if true {
	if (kActionK) and ! attacking and state != ROLL and kControl and onGround{

		AtkMode = "小型魔法";
		image_index = 0;
		image_speed = 0;
		sprite_index = sAtk;
		attacking = true;
		AtkTime++;
		//空中瞬发无法蓄力 和使用大型魔法
		if onGround and false {
			image_speed = 0.25;

		}
	}
	//持续
	if (kActionK) and attacking and state != ROLL and kControl and AtkTime and AtkMode = "小型魔法" {
		
		C = (c_blue) AtkTime++;

	}
	//松开发射
	if (kActionR) and attacking and state != ROLL and kControl and AtkTime and image_index = 0 and AtkMode = "小型魔法" {

		image_index = 1;
		image_speed = 0.25;

		var M = MagicList[| YX]; //读取对应元素 现在默认搓火球
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

//辅助键 发动辅助技能
if true {
	if (kRoll) and ! attacking and state != ROLL and kControl {

		AtkMode = "辅助魔法"image_index = 0;
		image_speed = 0.25;
		sprite_index = sAtk;
		attacking = true;

		var M = MagicList[| 0];
		var N = M[? "辅助魔法"]
		var A = instance_create(self.x, self.y - 16, N);

	}
};
//攻击期间 不能动弹
if true and attacking {

	if onGround {
		self.kLeft = 0;
		self.kRight = 0;
	}
	self.kUp = 0;
	self.kDown = 0;
	self.kJump = 0;
	self.kJumpRelease = 0;
	self.kRoll = 0;
};