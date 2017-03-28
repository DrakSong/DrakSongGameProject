action_inherited();
///贴身会让玩家受伤攻击
/*
///攻击判定
if AtkBox with(AtkBox) {
        instance_destroy();
}
// Atk
 {
        AtkBox = instance_create(x, y - 8, oEnemyAtkBox);
         AtkBox.bboxleft = bbox_left;//min(x + (5 * facing), x + (30 * facing));
        AtkBox.bboxright = bbox_right;//max(x + (5 * facing), x + (30 * facing));
        AtkBox.bboxtop = y - 1 - 16;
        AtkBox.bboxbottom = y + 0;
        AtkBox.AtkStiff = 12;
        AtkBox.AtkFlyH = 3.2;
        AtkBox.AtkFlyV = 2.2;
        AtkBox.ATK = 10; //irandom_range(3,6);
        AtkBox.Pid = id
        with(AtkBox) {

                var _CE = collision_rectangle(bboxleft, bboxtop, bboxright, bboxbottom, oBboxPlayer, 0, 0); {
                        if _CE {
                                scrAtkBox(self, _CE.Pid);
                        }

                }

               //  var _CE = collision_rectangle(bboxleft, bboxtop, bboxright, bboxbottom, oParDecorate, 0, 0); {
              //    if _CE {
              //                  scrAtkBox(self, _CE);
             //           }

       // }
}
}


/* */
/*  */
