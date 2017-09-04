action_inherited();
#region 持续键位检测
self.kLeft = KeyCheck("左","按住")
	self.kRight = KeyCheck("右","按住")
	self.kUp = KeyCheck("上","按住")
	self.kDown =KeyCheck("下","按住")
	self.kJump = (KeyCheck("跳跃","按下")) and ! (self.attacking);
	self.kJumpRelease = (KeyCheck("跳跃","松开"));
	self.kActionP =(KeyCheck("攻击","按下"));
	self.kActionK =(KeyCheck("攻击","按住"))
	self.kAction =(KeyCheck("攻击","按下"))
	self.kActionR = (KeyCheck("攻击","松开"))
	self.kRoll = (KeyCheck("特殊键","按下"));
#endregion
#region 上+攻击发射 副武器
//上A 
if (kUp && kAction) and ! attacking and state != ROLL and kControl and OtherAtk {

	// Atk in place
	image_index = 0;
	image_speed = 0.25;
	sAtk = sPlayerJab;
	sprite_index = sAtk;
	attacking = true;

	}

	
//上A后第1帧发射
if attacking and sprite_index = sPlayerJab and (image_index >1 and image_index<1.5) and !AtkUse and OtherAtk
{
	var A = instance_create(self.x + facing*8, self.y -8,OtherAtk) ;
	A.facing = facing;
	A.hspeed = A.facing *3
	A.image_xscale = 1*facing
	AtkUse = true;
}
#endregion
#region //通常攻击
if ( kAction) and ! attacking and state != ROLL and kControl  {

	// Atk in place
	image_index = 0;
	image_speed = 0.45;
	sAtk = sPlayerAtk;
	sprite_index = sAtk;
	attacking = true;
	SoundPlay(SouAtk)
	//instance_create(x, y - 16, OtherAtk)

}
#endregion
#region 地面攻击期间不许动
  if onGround && attacking {
                vx = 0
        }
		#endregion
#region //攻击在这几针上才有攻击判定

	
if (self.attacking > 0 ) and  (self.sprite_index == sPlayerAtk) {
	if (random(self.image_index) > 1 and random(self.image_index) < 2) {
	
		
			
self.AtkBoxD = self.y - 8;
self.AtkBoxU = self.y - 6;
self.AtkBoxL = self.x + self.facing * 1;
self.AtkBoxR = self.x + self.facing * 18;

		AtkBoxCollisionRectangle(self.AtkBoxL, self.AtkBoxU, self.AtkBoxR, self.AtkBoxD, oParEnemy, 1, 1);
		AtkBoxCollisionRectangle(self.AtkBoxL, self.AtkBoxU, self.AtkBoxR, self.AtkBoxD, oParDecorate, 1, 1);
		
		
	}
else
 ds_list_clear(self.AtkList)
}

#endregion



