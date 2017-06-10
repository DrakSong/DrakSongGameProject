action_inherited();


///参数修改
///spritie对应表

sIdle = sPlayerIdle; //战立
sRun = sPlayerRun;//跑动
sRoll = sPlayerRoll; //滚动
sJumpU = sPlayerJumpU;//上升
sJumpM = sPlayerJumpM;//维持
sJumpD = sPlayerJumpD;//下落
sAtk = sPlayerAtk; //攻击;
sBatk = sPlayerJumpM;//被攻击
///角色属性（一般修改地区）
var k = 1-0.618
groundAccel = 1.00*k;
groundFric  = 2.00*k;
airAccel    = 0.75*k;
airFric     = 0.01;
vxMax       = 1.5;
vyMax       = 13*k;
jumpHeight  = 10*k;
gravNorm    = 0.25;//重力速度
gravSlide   = 0.25; //贴墙重力速度
clingTime   = 2.0;
RollSpeed = 0;//滚动速度
RollLong = 4;//滚动距离
TowJumpON = true;//二段跳锁

//修正




MaxHP = 1;
MaxMP = 1;
MaxAP = 1;
HP =  10;
MP =  1;
AP =  1;

//攻击
ATK = 1;//攻击力
ASTI = 12//攻击照成硬直
AFlyH = 1;//击飞玩家
AFlyV = 1;//击飞玩家
//防御
DEF = 0;//防御力
DSTI = 0//僵直补正
DFlyH = 0//吹飞补正
DFlyV = 0//击飞补正


Mode  = "RUN"
