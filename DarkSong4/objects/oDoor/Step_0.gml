if instance_exists(oParPlayer) and oParPlayer.TargetGoTo {
    if oParPlayer.OldRoom = GoToRoom and self.GoToDoor = oParPlayer.OldDoor {

        oParPlayer.TargetGoTo = false;
        if abs(self.image_yscale) > 1 and abs(oParPlayer.TargetDoorYscale) > 1 {
            oParPlayer.x = self.x + 8+ 14 * sign(oParPlayer.TargetGoToVX) 
			oParPlayer.y = self.bbox_bottom + oParPlayer.TargetY

            oParPlayer.y = min(self.bbox_bottom, oParPlayer.y) if oParPlayer.y = self.bbox_bottom {
                oParPlayer.vx = 0 oParPlayer.image_yscale = 1
            }
            oParPlayer.y = max(self.bbox_top - 16, oParPlayer.y)
        }
        if abs(self.image_xscale > 1) and abs(oParPlayer.TargetDoorXscale) > 1 {
            oParPlayer.x = self.x + oParPlayer.TargetX
			 oParPlayer.x = max(self.bbox_left + 16, oParPlayer.x) 
			 oParPlayer.x = min(self.bbox_right - 16, oParPlayer.x)

            if sign(oParPlayer.TargetGoToVY) oParPlayer.y = self.y + 8 + (16 + 8) * 1 //*sign(oParPlayer.TargetGoToVY)
            else oParPlayer.y = self.y + 8 + (8) * -1
        }

    }
}