function step(self, other)
	--控制
	if (self.kControl > 0.5) then
		self.kLeft = keyboard_check(_G.kLeft)
		self.kRight = keyboard_check(_G.kRight)
		self.kUp = keyboard_check(_G.kUp)
		self.kDown = keyboard_check(_G.kDown)
		self.kJump = (keyboard_check_pressed(_G.kJump) ) and not(self.attacking > 0.5) and 1 or 0
		self.kJumpRelease = keyboard_check_released(_G.kJump)
		self.kAction = keyboard_check_pressed(_G.kAttack)
		self.kBlock = 0
		self.kRollL = (keyboard_check_pressed(_G.kRoll) )and (self.kLeft > 0.5) and 1 or 0
		self.kRollR = (keyboard_check_pressed(_G.kRoll) ) and (self.kRight > 0.5) and 1 or 0
	end
	--无法控制期间不能动
	if (self.kControl < 0.5) then
		self.kLeft = 0
		self.kRight = 0
		self.kUp = 0
		self.kDown = 0
		self.kJump = 0
		self.kJumpRelease = 0
		self.kAction = 0
		self.kBlock = 0
		self.kRollL = 0
		self.kRollR = 0
	end
	--滚动期间改变图片
	if ((self.onGround > 0.5) and not (self.attacking > 0.5)) then
		if (self.state ~= self.ROLL) then
			if (self.kRollL > 0.5) then
				self.facing = -1
				self.image_index=0
				self.image_speed=0.5
				self.RollTrue = 1
				self.sprite_index = self.sRoll
				self.state = self.ROLL
			elseif (self.kRollR > 0.5) then
				self.facing = 1
				self.image_index=0
				self.image_speed=0.5
				self.sprite_index = self.sRoll
				self.RollTrue = 1
				self.state = self.ROLL
			end
		end
	end
	--进行滚动
	if (self.state == self.ROLL) then
		self.image_speed=self.RollSpeed
		self.vx = self.facing * self.RollLong
		if (not (self.onGround > 0.5) or ((self.cLeft > 0.5) or (self.cRight > 0.5))) then
			self.state = self.IDLE
			if (not (self.attacking > 0.5)) then
				--if (type(self.alarm) ~= "table") then self.alarm[0] = 0 end
				--self.alarm[1] = -1
				self.attacking = false;
				self.state = self.IDLE; 
			end
		end
	end
	--上+攻击
	if ((self.kUp > 0.5) and (self.kAction > 0.5)) then
		if (not (self.attacking > 0.5) and (self.state ~= self.ROLL))  then
			self.image_index=0
			self.image_speed=0.25
			self.sAtk = sPlayerJab
			self.sprite_index=self.sAtk
			self.attacking = 1
			
			instance_create(self.x, self.y-16, oDagger)
		
			SoundPlay(_G.SouAtk)
		end
	end
	--通常攻击
	if (self.kAction > 0.5) then
		if(not (self.attacking > 0.5) and (self.state ~= self.ROLL)) then
			self.image_index=0
			self.image_speed=0.45
			self.sAtk = sPlayerAtk
			self.sprite_index=self.sAtk
			self.attacking = 1
			SoundPlay(SouAtk)
		end
	end
	--在地面期间攻击不能移动
	if ((self.attacking > 0.5) and (self.onGround > 0.5)) then
		self.vx = 0
	end

	 
end
