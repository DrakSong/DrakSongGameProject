
action_inherited();

ATK = 1;
ASTI = 60;
AFlyV = 1.4;
RollSpeed = 0.35;
RollSpeed = 0.5;//滚动速度
RollLong = 3.25;//滚动距离
tightRM =-1;
tightDR = -1;
tightRoomGoOn = false;
tightDRF = -1
//AtkMode
OtherAtkMode = 0//"FT";
ChangeModeTime =0;
G =0;
Mode=0;

//__pos = 0;
OtherAtkModeMax = 1;//默认刚开始有1把

Map = ds_map_create();

var A = ds_map_create();
ds_map_add(A,"名字","小刀");
ds_map_add(A,"数量",2);
ds_map_add(A,"持有上限",5);
ds_map_add(Map,"A",A);

var B = ds_map_create();
ds_map_add(B,"名字","斧头");
ds_map_add(B,"数量",-1);
ds_map_add(B,"持有上限",-1);
ds_map_add(Map,"B",B);
