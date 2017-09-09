
sIdle =Gui//战立
sAtk = sShitaJab; //攻击;

#region 涉及攻击部分
//攻击
 attacking = false//攻击状态
ATK = 1;//攻击力
ASTI = 30//攻击照成硬直
AFlyH = 2;//击飞玩家
AFlyV = 3;//击飞玩家
AtkMode = "";
AtkUse = false;
AtkTime = 0;
#endregion
#region 运行控制部分
self.kControl = true //可以运动
facing = false
onGround = true
#endregion
#region 元素引索 
MagicList = ds_list_create();
//火 0
var MagicMap = ds_map_create(); 
ds_map_add(MagicMap, "小型魔法", oFireball)
ds_map_add(MagicMap, "辅助魔法", oHolyWater)
ds_list_add(MagicList, MagicMap)

var MagicMap = ds_map_create(); 
ds_map_add(MagicMap, "小型魔法", oThorn)
ds_map_add(MagicMap, "辅助魔法", oHolyWater)
ds_list_add(MagicList, MagicMap)

var MagicMap = ds_map_create(); 
ds_map_add(MagicMap, "小型魔法", oIce)
ds_map_add(MagicMap, "辅助魔法", oHolyWater)
ds_list_add(MagicList, MagicMap)
//风元素
var MagicMap = ds_map_create(); 
ds_map_add(MagicMap, "小型魔法", oCyclone)
ds_map_add(MagicMap, "辅助魔法", oHolyWater)
ds_list_add(MagicList, MagicMap)
#endregion