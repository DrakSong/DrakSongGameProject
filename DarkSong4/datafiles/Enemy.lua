function step(self)

--无人巡逻
  if  not (self:collision_circle(self.x,self.y,512,oParPlayer,1,0) > 0.5)  then
        if (self.cLeft < 0.5) and (self.cRight < 0.5) then
           if (self.facing < 0.5)  then
                self.kLeft = true
            end
            if (self.facing > 0.5)  then
                self.kRight = true
           end
        end

        if (self.cLeft > 0.5) then
            self.kLeft = 0
            self.kRight = true
        end

        if (self.cRight > 0.5) then
            self.kLeft = true
            self.kRight = 0;
        end
    end
      if   (self:collision_circle(self.x,self.y,128*2,oParPlayer,1,0) > 0.5)  then
      
         
        if sign(oParPlayer.x-self.x) > 0.5 then
        
             self.kLeft = 0;
              self.kRight = 1;
        else
        self.kLeft = 1;
         self.kRight = 0;
         end
      end
    --贴脸砍人
    if  (self:collision_circle(self.x,self.y,16,oParPlayer,1,0) > 0.5)  then
        self.kLeft = 0;
        self.kRight = 0;
        	if(not (self.attacking > 0.5)) and not (self.STI >0 ) then
            self.facing = sign(oParPlayer.x-self.x)
            end
       --通常攻击
	
		if(not (self.attacking > 0.5))  then
			self.image_index=0
			self.AtkBoxD = self.y - 8;
            self.AtkBoxU = self.y - 6;
            self.AtkBoxL = self.x --+ self.facing * 8;
            self.AtkBoxR = self.x + self.facing * 18;

			self.sAtk = sPlayerAtk
			self.sprite_index=self.sAtk
			self.attacking = 1
			--SoundPlay(SouAtk)
          
        end
       
    end
     if ((self.attacking > 0.5) and (self.onGround > 0.5)) then
		    self.kLeft = 0;
            self.kRight = 0;
            if self.image_index < 1 then
            self.image_speed=1/60
            else
            self.image_speed=8/60
            end


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
   





end

