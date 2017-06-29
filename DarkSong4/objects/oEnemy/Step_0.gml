/// @description Insert description here
// You can write your code in this editor
action_inherited();

live_update();

if !STI{
live_call("step", self);
}


if (attacking = true)and sprite_index = sPlayerAtk {
	if (random(image_index) > 1 and random(image_index) < 2)
	{ //判断方式
		self.AtkBoxD = self.y - 8;
	self.AtkBoxU = self.y - 6;
	self.AtkBoxL = self.x //+ self.facing * 8;
	self.AtkBoxR = self.x + self.facing * 18;

		var AColBox = //collision_multiple(x,y,oParEnemy)
		collision_rectangle_multiple(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParPlayer, 1, 1);
		AtkStep(AColBox);
		Col = c_red
		
	//	var AColBox = //collision_multiple(x,y,oParEnemy)
	//	collision_rectangle_multiple(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParDecorate, 1, 1);
	//	AtkStep(AColBox);
		
	}
	else
	{
	ds_list_clear(AtkList)
	Col = c_white
	}
	
}

if !attacking {ds_list_clear(AtkList) Col = c_white}