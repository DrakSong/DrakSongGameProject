//继承运动
action_inherited()
//按钮控制
if (self.kControl) {
		self.kLeft = keyboard_check(global.kLeft)
		self.kRight = keyboard_check(global.kRight)
		self.kUp = keyboard_check(global.kUp)
		self.kDown = keyboard_check(global.kDown)
		self.kJump = (keyboard_check_pressed(global.kJump) ) and!(self.attacking)
		self.kJumpRelease = keyboard_check_released(global.kJump)
		self.kActionP = keyboard_check_pressed(global.kAttack)
		self.kActionK = keyboard_check(global.kAttack)
		self.kActionR = keyboard_check_released(global.kAttack)
		self.kRoll = keyboard_check_pressed(global.kRoll)
}
else
{
		self.kLeft = 0
		self.kRight =0
		self.kUp = 0
		self.kDown = 0
		self.kJump = 0
		self.kJumpRelease = 0
		self.kActionP = 0
		self.kActionK = 0
		self.kActionR = 0
		self.kRoll = 0
};
//上+攻击 长按 完全咏唱 松开发射 大型aoe魔法 aoe 魔法还在期间 不能动弹 能切换出塔普罗继续攻击 
if false{
	//按下启动
	if (kActionP and kUp) and !attacking and state != ROLL and kControl {
				AtkMode = "大型魔法"
                image_index = 0;		
                image_speed = 0;
                sprite_index = sAtk;
                attacking = true;
                AtkTime++;
  	};
  		//持续
	if (kActionK) and attacking and state != ROLL and kControl and AtkTime and AtkMode = "大型魔法"{
		C = c_red
		AtkTime++;
		
	}
	//松开发射
	if (kActionR) and attacking and state != ROLL and kControl and AtkTime and image_index = 0 and AtkMode = "大型魔法"{
		

		image_index = 1;
        image_speed = 0.25;
        var M = MagicList [|0];
        var N = M[?"成功蓄力"]

		if AtkTime >30
		{

        var A = instance_create(self.x, self.y - 16,N) ;
			A.facing = facing;
			A.hspeed = A.facing *3
			A.image_xscale = 1*facing
			A.image_xscale = 2*facing
			A.image_yscale = 2
		}

		AtkUse = true;
	}

};
// 攻击  按下（长短） +	松开发射 （大小） 火球
if true {
	if (kActionP) and !attacking and state != ROLL and kControl {

                
                AtkMode = "小型魔法"
                image_index = 0;
                image_speed = 0;
                sprite_index = sAtk;
                attacking = true;
                AtkTime++;
  }
	//持续
	if (kActionK) and attacking and state != ROLL and kControl and AtkTime and AtkMode = "小型魔法"{
		C = (c_blue)
		AtkTime++;
		
	}
	//松开发射
	if (kActionR) and attacking and state != ROLL and kControl and AtkTime and image_index = 0 and AtkMode = "小型魔法"{
		

		image_index = 1;
        image_speed = 0.25;
        var M = MagicList [|0];
        var N = M[?"非蓄力"]
        var A = instance_create(self.x, self.y - 16,N) ;
			A.facing = facing;
			A.hspeed = A.facing *3
			A.image_xscale = 1*facing
		if AtkTime >60
		{
			A.image_xscale = 2*facing
			A.image_yscale = 2
		}

		AtkUse = true;
	}
};

//辅助键 发动辅助技能
if true{
	if ( kRoll) and ! attacking and state != ROLL and kControl  {

	AtkMode = "辅助魔法"
	image_index = 0;
	image_speed = 0.25;
	sprite_index = sAtk;
	attacking = true;

	var M = MagicList [|0];
        var N = M[?"辅助魔法"]
        var A = instance_create(self.x, self.y - 16,N) ;

	}
};
//攻击期间 不能动弹
if true and attacking{
	self.kLeft = 0
		self.kRight =0
		self.kUp = 0
		self.kDown = 0
		self.kJump = 0
		self.kJumpRelease = 0
		self.kRoll = 0
};
