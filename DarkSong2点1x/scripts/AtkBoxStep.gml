var Par = argument1; //对比父对象
//var Self = argument2;//获得属性的来源
for (var i = 0; i < ds_list_size(argument0); i += 1) {

    var T = ds_list_find_value(argument0, i) T = T.Cid
    var P = T;
    if instance_exists(P) {
        var P = T.object_index;
        if object_get_parent(P) = Par
        if ds_list_find_index(AtkList, T) = -1 {

            switch (Par) { 
            case oParEnemy:
                T.HP -= max(self.ATK - T.DEF, 0) //HP处理
                T.STITime = max(self.ASTI - T.DSTI, 0) //僵硬
                var F;//获取方向
                F = 0
                if (T.xprevious > self.x) {
                    _F = 1
                } else {
                    _F = -1
                }
                T.vx = max(self.AFlyH - T.DFlyH, 0) * _F //横飞
                T.vy = max(self.AFlyV - T.DFlyV) * -1 //竖
                ;
                break;
            case oParPlayer:
            T.HP -= max(self.ATK - T.DEF, 0) //HP处理
                T.STITime = max(self.ASTI - T.DSTI, 0) //僵硬
                var F;//获取方向
                F = 0
                if (T.xprevious > self.x) {
                    _F = 1
                } else {
                    _F = -1
                }
                T.vx = max(self.AFlyH - T.DFlyH, 0) * _F //横飞
                T.vy = max(self.AFlyV - T.DFlyV) * -1 //竖
                ;
                break;

            
             case oParBarrage:
            T.HP -= self.ATK;//max( - T.DEF, 0); //砍子弹HP处理
                break;
                case oParDecorate:
            T.HP -= self.ATK;//show_message('触发');
                break;
                }

            ds_list_add(AtkList, T)
        }

    }

}
