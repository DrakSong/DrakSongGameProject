
action_inherited();
RollSpeed = 0.35;
RollSpeed = 0.5;//滚动速度
RollLong = 3.25;//滚动距离

//攻击
ATK = 1;//攻击力
ASTI = 30//攻击照成硬直
AFlyH = 2;//击飞玩家
AFlyV = 3;//击飞玩家

CanPushBlock = true


TowJumpON = false;

sIdle =sShitaIder //战立
sRun = sShitaRun;//跑动
//sRoll = sShitaRoll; //滚动
sJumpU = sShitaJumpU;//上升
sJumpM = sShitaJumpM;//维持
sJumpD = sShitaJumpD;//下落
sAtk = sShitaJab; //攻击;
sInjured = sShitaInjured;//被攻击

//元素切换的玩意
YX = 0;//第一张 火元素
TopYX = false;
OldYX  = -1;
OldTopYX = -1;

AtkMode = "";
AtkUse = false;
AtkTime = 0;

HP = 15 ;
MaxHP = 32;
MaxMP = 64;
MP = 16;

C = c_white;


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