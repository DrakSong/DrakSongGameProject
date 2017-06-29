///属性
//继承
event_inherited();
kControl = true;//指令输入锁

///动作功能属性
var k = 1-0.618
groundAccel = 1.00*k;
groundFric  = 2.00*k;
airAccel    = 0.75*k;
airFric     = 2.00*k;
vxMax       = 5.25*k;
vyMax       = 13*k;
jumpHeight  = 5.5*0.68;
gravNorm    = 0.25;//重力速度
gravSlide   = 0.25; //贴墙重力速度
clingTime   = 2.0;
RollSpeed = 0.5;//滚动速度
RollLong = 4;//滚动距离
TowJumpON = true;//二段跳锁
SlideJumpON = false;//贴墙跳跃
blocking  = false;//开启防御


///绘制体系
sIdle = sPlayerIdle; //战立
sRun = sPlayerRun;//跑动
sRoll = sPlayerRoll; //滚动
sJumpU = sPlayerJumpU;//上升
sJumpM = sPlayerJumpM;//维持
sJumpD = sPlayerJumpD;//下落
sAtk = sPlayerJab; //攻击;
sInjured = sPlayerInjured;//被攻击


///角色伤害系统属性
MaxHP = 0;
MaxMP = 0;
MaxAP = 0;
HP =  0;
MP =  0;
AP =  0;
//攻击
ATK = 0;//攻击力
ASTI = 0//攻击照成硬直
AFlyH = 0;//击飞玩家
AFlyV = 0;//击飞玩家
//防御
DEF = 0;//防御力
DSTI = 0//僵直补正
DFlyH = 0//吹飞补正
DFlyV = 0//击飞补正





