function step(self) 
action_inherited();

--
	if self.STI > 0 then
		self.AtkTime = 0;
		self.attacking = false;
		self.kLeft = false;
		self.kRight = false;
		self.kUp = false;
		self.kDown = false;

		self.kJump = false;
		self.kJumpRelease = false;

		self.kAction = false;
		self.kActionK = false;
		self.kActionR = false;

		self.kBlock = false;

		self.kRollL = false;
		self.kRollR = false;

		self.sprite_index = self.sInjured self.kControl = false;

	end
if  (self.STI < 0.5) then

	--无人巡逻
	if not(self: collision_circle(self.x, self.y, 512, oParPlayer, 1, 0) > 0.5) then
		if (self.cLeft < 0.5) and(self.cRight < 0.5) then
			if (self.facing < 0.5) then
				self.kLeft = true
			end
			if (self.facing > 0.5) then
				self.kRight = true
			end
		end

		if (self.cLeft > 0.5) then
			self.kLeft = 0 self.kRight = true
		end

		if (self.cRight > 0.5) then
			self.kLeft = true self.kRight = 0;
		end
	end
	if (self: collision_circle(self.x, self.y, 128 * 2, oParPlayer, 1, 0) > 0.5) then

		if sign(oParPlayer.x - self.x) > 0.5 then

			self.kLeft = 0;
			self.kRight = 1;
			else self.kLeft = 1;
			self.kRight = 0;
		end
	end



	--贴脸砍人
	if (self: collision_circle(self.x, self.y, 16, oParPlayer, 1, 0) > 0.5) and self.STI < 0.5 then
		self.kLeft = 0;
		self.kRight = 0;
		if (not(self.attacking > 0.5)) and not(self.STI > 0) then
			if not sign(oParPlayer.x - self.x) == 0 then
				self.facing = sign(oParPlayer.x - self.x)
			end
		end--通常攻击

		if (not(self.attacking > 0.5)) then
			self.image_index = 0 self.AtkBoxD = self.y - 8;
			self.AtkBoxU = self.y - 6;
			self.AtkBoxL = self.x + self.facing * 1;
			self.AtkBoxR = self.x + self.facing * 18;

			self.sAtk = sPlayerAtk self.sprite_index = self.sAtk self.attacking = 1--SoundPlay(SouAtk)

		end

	end
	if ((self.attacking > 0.5) and(self.onGround > 0.5)) then
		self.kLeft = 0;
		self.kRight = 0;
		if self.image_index < 1 then
			self.image_speed = 1 / 60
			else self.image_speed = 8 / 60
		end

	end

	if (self.attacking > 0) and(self.sprite_index == sPlayerAtk) then
		if (random(self.image_index) > 1 and random(self.image_index) < 2) then

			AtkBoxCollisionRectangle(self.AtkBoxL, self.AtkBoxU, self.AtkBoxR, self.AtkBoxD, oParPlayer, 1, 1);

			else ds_list_clear(self.AtkList)
		end
	end
	if self.attacking < 0 then
		ds_list_clear(self.AtkList)
	end

end

--
end