AtkList = ds_list_create();
//为了进行不重复攻击 2间隔后 能再次攻击预留的部分
AtkListCleanTime = -1;
alarm[0] = AtkListCleanTime;
Cid = id;
INV = false;//无敌否
HP =  1;
//攻击
ATK = 0;//攻击力
ASTI = 0//攻击照成硬直
AFlyH = 0;//击飞玩家
AFlyV = 0;//击飞玩家
AtkListMax = -1;//穿透

BoomOn = false;