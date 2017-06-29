if instance_exists(oDialogueBox)
{
	kControl = false;
}


action_inherited();


///对话期间不动





///攻击范例
/*
if onGround && attacking {
    vx = 0
}
if AP - 8 > 0
if (!kBlock && kAction) and ! attacking and state != ROLL and AtkHit = 0 {
    {

        // Atk in place
        {
            AtkMode = 'S'image_index = 0;
            image_speed = 0.15;
            sprite_index = sAtk;
            attacking = true;
            SoundPaly(SouAtk) AP -= 8;

        }
    }
}

///攻击判定
AtkBox = 0

// Atk
if (sprite_index == sAtk && round(image_index) > 1) and AtkMode = 'S' {

   AtkBoxL = min(x + (5 * facing), x + (30 * facing));
   AtkBoxR = max(x + (5 * facing), x + (30 * facing));
   AtkBoxU = y-8;
   AtkBoxD = y;

    var C = collision_rectangle_multiple(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oEnemy, 0, 0);

    if C {

        for (var i = 0; i < ds_list_size(C); i += 1) {
            var T = (ds_list_find_value(C, i)) with(T) {
                vy = -2;
                HP -= 1;
            }

        };
    }
}

/* */
///键入范例
/*

//关闭控制后全部不可用
if kControl = false scrConOFF();

if kControl{
kLeft        = KeyGet('左',0) 
kRight       = KeyGet('右',0)

kUp          = KeyGet('上',0)    
kDown        = KeyGet('下',0)  

kJump        = KeyGet('B',2)  and !attacking
kJumpRelease = KeyGet('B',1) 

kAction      = KeyGet('A',2)  
kActionK     = KeyGet('A',0)  
kActionR     =KeyGet('A',1) 


kBlock       = false
kRollL       = KeyGet('R',2) and kLeft   and (AP-16)>0//and false
kRollR       = KeyGet('R',2) and kRight   and (AP-16)>0//and false

}
//滚动限制
if RollTrue= true {AP -= 16  RollTrue = false;}

AP = min(MaxAP,AP)

/* */





////被攻击的部分

/*
var P = instance_place(x,y,oParEnemyBarrage)
if P
with (P)
{
//action_inherited();
//AtkBoxCollison(x,y,oParPlayer);
};
  



