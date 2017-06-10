action_inherited();
///远程攻击


if Mode = "RUN"and !STI
{
if abs(x-oParPlayer.x+1)>64+16
{
   if x-oParPlayer.x >=0
    
   { kLeft = true; kRight = false;}
   else
   {
    kRight =true; kLeft = false;}
}
else
{
kRight =false; kLeft = false; //facing = sign(x-oParPlayer.x )
Mode = "ATK"
}


}
if STI {kRight =false; kLeft = false; }

if Mode = "ATK" and !STI
{
   //地面通常A
        if  ! attacking and state != ROLL and kControl and onGround{
				
                image_index = 0;
                image_speed = .10/4;
				  sprite_index = sAtk;
                attacking = true;
				///攻击判定
	
				}
  
  	if 	attacking and sprite_index = sAtk and  (image_index) == 1
				{
  var D;
    D = instance_create(x+facing*8, y-16, oEFT);
	 SoundPaly(SouAtk);
    D.sprite_index = sAxe;
	D.mask_index = sAxe;
    D.hspeed = 2.4 * facing;
	D.image_xscale = facing;
//    attacking = true;
    D.ATK =1;
    D.ASTI = 12;
    D.AFlyV = 2;
    D.AFlyH = 1.6;
	}
  
}