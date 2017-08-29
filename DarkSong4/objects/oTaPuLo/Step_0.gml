action_inherited();

self.kLeft = KeyCheck("左","按住")
	self.kRight = KeyCheck("右","按住")
	self.kUp = KeyCheck("上","按住")
	self.kDown =KeyCheck("下","按住")
	self.kJump = (KeyCheck("跳跃","按下")) and ! (self.attacking);
	self.kJumpRelease = (KeyCheck("跳跃","松开"));
	self.kActionP =(KeyCheck("攻击","按下"));
	self.kActionK =(KeyCheck("攻击","按住"))
	self.kActionR = (KeyCheck("攻击","松开"))
	self.kRoll = (KeyCheck("特殊键","按下"));
//背包的系统准备
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[? "数量"]

var B = Map[? "B"]
var BN = B[? "名字"]
var BS = B[? "数量"]

//轻按下换武器 
if KeyCheck("切换武器","按下") and kControl {
	if (B[?"名字"] != ""and A[?"名字"] != "") {
		var H = Map[? "B"];
		Map[?"B"] = Map[? "A"];
		Map[?"A"] = H;
	}
}

//根据物品民智决定发射啥 
if AN = "" {
	OtherAtk = -1}
else {
	OtherAtk = OtherAtkMap[?AN]}


//上A 
if (kUp && kAction) and ! attacking and state != ROLL and kControl and OtherAtk {

	// Atk in place
	image_index = 0;
	image_speed = 0.25;
	sAtk = sPlayerJab;
	sprite_index = sAtk;
	attacking = true;

	

	if AS != -1 //排除无限使用道具
	{
		if AS - 1 >= 0 //使用后还有剩余的
		{
			A[? "数量"] = AS - 1;

		}
		if AS - 1 = 0 {
			A[? "数量"] = AS - 1;
			A[? "名字"] = "";

			//现有的 被清理后把如果备用的有 就吧备用的拿上来 
			if BN != "" {
				var H = Map[?"B"];
				Map[?"B"] = Map[?"A"];
				Map[?"A"] = H;
			}

		}
	}

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

//通常攻击
if ( kAction) and ! attacking and state != ROLL and kControl  {

	// Atk in place
	image_index = 0;
	image_speed = 0.25;
	sAtk = sPlayerAtk;
	sprite_index = sAtk;
	attacking = true;

	//instance_create(x, y - 16, OtherAtk)

}