action_inherited();
///远程攻击


if Mode = "RUN"and !STI
{
if abs(x-oParPlayer.x+1)>16
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
		     //   facing = sign(x - x.oParPlayer.x+1)
                image_index = 0;
                image_speed = 0.05;
				  sprite_index = sAtk;
                attacking = true;
				 SoundPaly(SouAtk);
				}
  ///攻击判定
        AtkBox = 0
        if (sprite_index == sAtk and round(image_index) = 1)  {
                AtkBoxL = min(x + (5 * facing), x + (20 * facing));
                AtkBoxR = max(x + (5 * facing), x + (20 * facing));
                AtkBoxU = y - 9-1;
                AtkBoxD = y - 5+1;
                AtkBoxCol = c_red ;
				AtkBoxCollisonRectangle(AtkBoxL, AtkBoxU, AtkBoxR, AtkBoxD, oParPlayer);
        }
}