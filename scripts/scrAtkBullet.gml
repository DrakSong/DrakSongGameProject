if self and argument0 {

    //攻击的区域判定
    var _Atk = self;
    //被攻击的物体
    var _Def = argument0;
    if _Def
    if ! (_Def.Invaliding) and ! (_Def.state = _Def.ROLL) //被攻击物体不处于无敌和滚动
    {
        
        //被攻击物体造成硬直
        _Def.StiffTime = max(0, _Atk.AtkStiff - _Def.DefStiff);

        //被攻击物体进入无敌
        _Def.InvalidTime = _Def.DefTime; //这是角色属性
        //击飞
        //获得方向
        var F;
        F = 0
        if (_Def.xprevious > _Atk.x) {
            _F = 1
        } else {
            _F = -1
        }

        // H
        _Def.vx = max(0, _Atk.AtkFlyH - _Def.DefFlyH) * _F;
        // V
        _Def.vy = max(0, _Atk.AtkFlyV - _Def.DefFlyV) * -1;
        
        
        
        //被攻击物体HP变化 
        
        _Def.HP -= max(0, _Atk.ATK - _Def.DEF);
        
          show_debug_message(string(object_get_name( _Def.object_index ))+
        (' NO.'+string(_Def.id)
        +'遭受 远 距离攻击 '
        +(string(object_get_name(_Atk.object_index )))
        +'，受到'
        +string(object_get_name( _Atk.Pid.object_index ))
        +(' NO.'+string(_Atk.Pid.id))
        +'的'
        +string(max(0, _Atk.ATK - _Def.DEF))
        +'点伤害 剩余HP:'
        +string(_Def.HP)))
        
    }

}
