action_inherited();

  _L = 0;_R =0;
 alarm[0] = 30
Toughness = 0;
HitFlyY=3.69;

///参数修改
///spritie对应表

sIdle =sNPC//sPlayerIdle; //战立
sRun = sPlayerRun;//跑动
sRoll = sPlayerRoll; //滚动
sJumpU = sPlayerJumpU;//上升
sJumpM = sPlayerJumpM;//维持
sJumpD = sPlayerJumpD;//下落
sAtk = sPlayerJab; //攻击;
sBatk = sPlayerJumpM;//被攻击
///角色属性（一般修改地区）
var k = 1-0.618
groundAccel = 1.00*k;
groundFric  = 2.00*k;
airAccel    = 0.75*k;
airFric     = 0.01;
vxMax       = 1;
vyMax       = 13*k;
jumpHeight  = 10*k;
gravNorm    = 0.25;//重力速度
gravSlide   = 0.25; //贴墙重力速度
clingTime   = 2.0;
RollSpeed = 0;//滚动速度
RollLong = 4;//滚动距离
TowJumpON = true;//二段跳锁

//修正
BAtkFlyY = 0//击飞修正
BAtkFlyX = 0//击飞修正
Toughness = 0;//硬直修正 


//受伤害回复的时长
//StiffTime = 0; //硬直时间
//InvalidTime = 0;//无敌时间

//是否绘制debug信息
//Debug = true;


MaxHP = 100;
MaxMP = 1;
MaxAP = 1;
HP =  100;
MP =  1;
AP =  1;

ATK = 0;//攻击力
DEF = 0//防御力


/***********防御**********/
DEF = 0;//防御力
DefStiff = 0//僵直补正
DefFlyH = 0//击飞补正
DefFlyV = 0//
DefTime = 9//自身受伤后 无敌时间
/***************攻击****************************/
ATK = 0;//攻击力
AtkStiff = 0//攻击照成硬直
AtkFlyH = 5;//击飞玩家
AtkFlyV = 5;//击飞玩家


/* */
/*  */
