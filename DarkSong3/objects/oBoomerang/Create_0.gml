action_inherited();
ATK = 1;
AFlyV = 1.5;
ASTI = 10;


 var F = self//instance_create(x, y-16, oAxe);
                        F.sprite_index = sAxe;
                        F.mask_index = sAxe;
                        //F = instance_create(x, y, oFT) ;
						var AX = 0;
						if oParPlayer.onGround AX=0
						else 
						AX = vx;
                        F.hspeed = facing * 1.45+AX;
                        F.vspeed = -6.80;
                        F.gravity = 0.5;
                        F.image_xscale = facing;


