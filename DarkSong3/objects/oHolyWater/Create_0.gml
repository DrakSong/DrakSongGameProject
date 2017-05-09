/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码


 var F = self//instance_create(x, y-16, oAxe);
         
                        //F = instance_create(x, y, oFT) ;
						var AX = 0;
						if oParPlayer.onGround AX=0
						else 
						AX = oParPlayer.vx;
                        F.hspeed = oParPlayer.facing * 2.75+AX;
                        F.vspeed = -2.80;
                        F.gravity = 0.5;
                        F.image_xscale = oParPlayer.facing;


