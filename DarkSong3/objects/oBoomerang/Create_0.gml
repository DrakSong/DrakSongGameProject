action_inherited();
ATK = 1;
AFlyV = 1.5;
ASTI = 10;
INV = true;

 var F = self//instance_create(x, y-16, oAxe);
						if !oParPlayer.onGround
                        F.hspeed =oParPlayer. facing * 3.95+oParPlayer.vx;
						else
						  F.hspeed =oParPlayer. facing * 3.95
						  
                        F.image_xscale = oParPlayer.facing;
					
AtkListCleanTime = 60;
alarm[0] = AtkListCleanTime;
alarm[1] = 3*60;