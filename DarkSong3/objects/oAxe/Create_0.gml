action_inherited();
ATK = 1;
AFlyV = 1.5;
ASTI = 10;

AtkListCleanTime = 60;
alarm[0] = AtkListCleanTime;
 var F = self//instance_create(x, y-16, oAxe);
         
                        //F = instance_create(x, y, oFT) ;
						var AX = 0;
						if oParPlayer.onGround AX=0
						else 
						AX = oParPlayer.vx;
                        F.hspeed = oParPlayer.facing * 1.45;
                        F.vspeed = -6.80;
                        F.gravity = 0.5;
                        F.image_xscale = oParPlayer.facing;


