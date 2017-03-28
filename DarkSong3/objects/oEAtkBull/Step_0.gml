action_inherited();
///远程攻击

if (!kBlock ) and !attacking and state !=ROLL and !STI {
   AtkMode = "L";
    image_index = 0;
    image_speed = 0.1;
    sprite_index = sAtk;

    var D;
    D = instance_create(x+facing*8, y, oEFT);
    D.sprite_index = sFT;
    D.image_speed = 0.1;
    D.hspeed = 2.4 * facing;
    D.vspeed = -8.18;
    D.gravity = 0.7;
    D.gravity_direction = 270;
    D.image_angle+=24
    D.friction = 0.08
   // D.HP = 10
    attacking = true;
    D.ATK =1;
    D.ASTI = 30;
   
    D.AFlyV = 2;
    D.AFlyH = 3.2/2;
   // D.Pid = id
    MP-=8
D.Invaliding = false//开启不吸收伤害
}

