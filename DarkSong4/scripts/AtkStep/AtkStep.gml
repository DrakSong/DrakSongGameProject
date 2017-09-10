var AColBox = argument0;

if ! self.STI //被打断时候不去进行伤害计算
{
    if ds_list_size(AColBox) > 0 {
        for (i = 0; i < ds_list_size(AColBox); i += 1) {
            if ds_list_find_index(AtkList, ds_list_find_value(AColBox, i)) = -1 {
                ds_list_add(AtkList, ds_list_find_value(AColBox, i))
                //每加入一个草一个
                var Col = ds_list_find_value(AColBox, i);
#region 被攻击的目标 是 怪物
                if (object_get_parent(Col.object_index) = oParEnemy) {
                    if ! (Col.sprite_index = Col.sRoll) or ! (INV = 0) {
                        Col.HP -= max(0, self.ATK - Col.DEF); //伤害处理
                        Col.STITime = max(0, self.ASTI - Col.DSTI)

                        if Col.STITime //打出硬直才能击飞
                        {
                            Col.vx = (max(0, self.AFlyH - Col.DFlyH) + abs(Col.vx)) * self.facing
							Col.vy = -max(0, self.AFlyV - Col.DFlyV);
                        }
                    }
                }
#endregion
#region 被攻击的 目标是 玩家

                if (object_get_parent(Col.object_index) = oParPlayer) {
                    if ! (Col.sprite_index = Col.sRoll) or ! (INV = 0) {
                        Col.HP -= max(0, self.ATK - Col.DEF); //伤害处理
                        Col.STITime = max(0, self.ASTI - Col.DSTI);
                        //show_message(Col.STITime)
                        //Col.INVTime = (12);//w玩家能有个短无敌
                        if Col.STITime //打出硬直才能击飞
                        {
                            if ! self.facing = 0 {
                                Col.vx = (max(0, self.AFlyH - Col.DFlyH) + abs(Col.vx)) * self.facing
                            } else {
                          //      Col.vx = (max(0, self.AFlyH - Col.DFlyH) + abs(Col.vx))// * self.facing
                            }
                            Col.vy = -max(0, self.AFlyV - Col.DFlyV);

                        }
                    }
                }
#endregion
             #region 被攻击的是装饰物 
			    if (object_get_parent(Col.object_index) = oParDecorate) and Col.INV = 0 {
                    Col.HP -= max(0, self.ATK)
                }
				#endregion
            }
        }
    }
}