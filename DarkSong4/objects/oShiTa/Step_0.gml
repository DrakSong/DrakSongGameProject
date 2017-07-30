action_inherited();




/*


if (self.attacking == true) and (self.sprite_index == sPlayerAtk) {
	if (random(self.image_index) > 1 and random(self.image_index) < 2) {
	
		
		
		AtkBoxCollisionRectangle(self.AtkBoxL, self.AtkBoxU, self.AtkBoxR, self.AtkBoxD, oParEnemy, 1, 1);
		
		
		AtkBoxCollisionRectangle(self.AtkBoxL, self.AtkBoxU, self.AtkBoxR, self.AtkBoxD, oParDecorate, 1, 1);
		
		}
}

if not self.attacking  {
 ds_list_clear(self.AtkList)
}




/*

self.AtkBoxD = self.y - 8;
self.AtkBoxU = self.y - 6;
self.AtkBoxL = self.x //+ self.facing * 8;
self.AtkBoxR = self.x + self.facing * 18;


if (attacking = true) and sprite_index = sPlayerAtk {
	if (random(image_index) > 1 and random(image_index) < 2)
	{ //判断方式
		
		
		AtkBoxCollisionRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParEnemy, 1, 1);
		
		
		AtkBoxCollisionRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParDecorate, 1, 1);
		
		
	}
}
if !attacking ds_list_clear(AtkList)
/*
kUp = keyboard_check(global.kUp);
kAction = keyboard_check_pressed(global.kAttack);
if (kUp && kAction)
    {
        if !attacking and state != ROLL 
        {
            
            image_index = 0;
            image_speed = 0.25;
            sAtk = sPlayerJab;
            sprite_index = sAtk;
			
			E = instance_create(x,y-16,oDagger)
			E.hspeed = 3.3*facing
			
            attacking = true;
            SoundPlay(SouAtk);
        }

}
*/





/*
//键入
//关闭控制后全部不可用
    kLeft = keyboard_check(global.kLeft);
	kRight = keyboard_check(global.kRight);
	kUp = keyboard_check(global.kUp);
	kDown = keyboard_check(global.kDown);
	kJump = keyboard_check_pressed(global.kJump) and ! attacking;
    kJumpRelease = keyboard_check_released(global.kJump)
	kAction = keyboard_check_pressed(global.kAttack);
    kBlock = false;
    kRollL = keyboard_check_pressed(global.kRoll) and kLeft 
    kRollR = keyboard_check_pressed(global.kRoll) and kRight 


///滚动
if (onGround && !attacking)
{
   
    
        if (state != ROLL) 
        {
            if (kRollL) 
            {
                facing = - 1;
                image_index = 0;
                image_speed = 0.5;
                RollTrue = true;
                sprite_index = sRoll;
                state = ROLL;
            }
            else if (kRollR) 
            {
                facing = 1;
                image_index = 0;
                image_speed = 0.5;
                sprite_index = sRoll;
                RollTrue = true;
                state = ROLL;
            }
        }
    
	}
    if (state == ROLL) 
    {
        
        image_speed = RollSpeed vx = facing * RollLong
        
        if (!onGround || (cLeft || cRight)) {
            state = IDLE;
            if (!attacking) {
                alarm[1] = - 1;
            }
        }
    }
    //上A
    if (kUp && kAction)
    {
        if !attacking and state != ROLL 
        {
            
            image_index = 0;
            image_speed = 0.25;
            sAtk = sPlayerJab;
            sprite_index = sAtk;
            attacking = true;
            SoundPlay(SouAtk);
        }live_update();

self.AtkBoxD = self.y - 8 self.AtkBoxU = self.y - 6 self.AtkBoxL = self.x + self.facing * 8 self.AtkBoxR = self.x + self.facing * 18

if (attacking = true) {
    if (random(image_index) > 0 and random(image_index) < 2)

    { //判断方式
        var AColBox = collision_rectangle_multiple(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oIdle, 1, 1);
        if ds_list_size(AColBox) > 0 {
            for (i = 0; i < ds_list_size(AColBox); i += 1) {
                if ds_list_find_index(AtkList, ds_list_find_value(AColBox, i)) = -1 {
                    ds_list_add(AtkList, ds_list_find_value(AColBox, i))
                    //每加入一个草一个
                    with(ds_list_find_value(AColBox, i)) {
                        vy = -7; //攻击处理
                    }
                }
            }
        }
    }
    if ! (random(image_index) > 0 and random(image_index) < 2) {
        ds_list_clear(AtkList)
    }
}

live_call("step", self) action_inherited();

/*
//键入
//关闭控制后全部不可用
    kLeft = keyboard_check(global.kLeft);
	kRight = keyboard_check(global.kRight);
	kUp = keyboard_check(global.kUp);
	kDown = keyboard_check(global.kDown);
	kJump = keyboard_check_pressed(global.kJump) and ! attacking;
    kJumpRelease = keyboard_check_released(global.kJump)
	kAction = keyboard_check_pressed(global.kAttack);
    kBlock = false;
    kRollL = keyboard_check_pressed(global.kRoll) and kLeft 
    kRollR = keyboard_check_pressed(global.kRoll) and kRight 


///滚动
if (onGround && !attacking)
{
   
    
        if (state != ROLL) 
        {
            if (kRollL) 
            {
                facing = - 1;
                image_index = 0;
                image_speed = 0.5;
                RollTrue = true;
                sprite_index = sRoll;
                state = ROLL;
            }
            else if (kRollR) 
            {
                facing = 1;
                image_index = 0;
                image_speed = 0.5;
                sprite_index = sRoll;
                RollTrue = true;
                state = ROLL;
            }
        }
    
	}
    if (state == ROLL) 
    {
        
        image_speed = RollSpeed vx = facing * RollLong
        
        if (!onGround || (cLeft || cRight)) {
            state = IDLE;
            if (!attacking) {
                alarm[1] = - 1;
            }
        }
    }
    //上A
    if (kUp && kAction)
    {
        if !attacking and state != ROLL 
        {
            
            image_index = 0;
            image_speed = 0.25;
            sAtk = sPlayerJab;
            sprite_index = sAtk;
            attacking = true;
            SoundPlay(SouAtk);
        }
		}
        //通常A
        if (kAction)
        {
            if !attacking and state != ROLL 
            {
                image_index = 0;
                image_speed = 0.45;
                sAtk = sPlayerAtk;
                sprite_index = sAtk;
                attacking = true;
                SoundPlay(SouAtk);
            ;
            }
          
        }
     if attacking and onGround
	 {
	 vx = 0
	 }




*/
