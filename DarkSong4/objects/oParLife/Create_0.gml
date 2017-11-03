///生物固有属性初化
///固有属性(只读）
event_inherited();//继承
///创建碰撞区域

//CBox = instance_create(x,y,oParCBox)
//CBox.mask_index = sprite_index;
//CBox.Cid = id;

Outlined = false

// States 的模式
IDLE     = "站立";
RUN      = "跑动";
JUMP     = "跳跃";
ROLL     = "滚动";
//状态
state  = IDLE;

xscale = 1;
yscale = 1;
facing = 1;//角色方向
RollTrue  =0//反馈成功翻滚

/***********攻击状态自身变化************************/
attacking = false;//开启攻击
AtkBox = 0;//攻击区域
TowJump = true;//二段跳记录缓冲
AtkTime = 0;//蓄力时间
AtkMode = "";//攻击模式

AtkHit = 0;//攻击次数
AtkHitTime = 0;//刷新攻击段数的时间
AtkList = ds_list_create();


STI  = false;//开启僵硬
INV = false//开启不吸收伤害
//受伤害回复的时长
STITime = 0; //硬直时间
INVTime = 0;//无敌时间

mask_index = sLifeMask;

Parent = object_get_parent(self)
AtkBoxU = 0;
AtkBoxD = 0;
AtkBoxL = 0;
AtkBoxR = 0;
AtkBoxCol = c_white

/* */
///生物功能初化 也是修改部分
//动作接口初化

kControl = true;

kLeft        = false;
kRight       = false;
kUp          = false;
kDown        = false;

kJump        = false;
kJumpRelease = false;

kAction      = false;
kActionP   = false;
kActionK     = false;
kActionR     = false;

kBlock       = false;

kRoll       = false;
kRollL       = false;
kRollR       = false;



///动作功能属性
var k = 1-0.618
groundAccel = 1.00*k;
groundFric  = 2.00*k;
airAccel    = 0.75*k;
airFric     = 2.00*k;
vxMax       = 5.25*k;
vyMax       = 13*k;
jumpHeight  = 1*k;
gravNorm    = 0.25;//重力速度
gravSlide   = 0.25; //贴墙重力速度
clingTime   = 2.0;
RollSpeed = 0.5;//滚动速度
RollLong = 2.5;//滚动距离
TowJumpON = true;//二段跳锁
SlideJumpON = false;//贴墙跳跃
blocking  = false;//开启防御
CanPushBlock = false//推石头



///绘制体系
//精灵对应表
sIdle = sNoSP; //战立
sRun = sNoSP;//跑动
sRoll = sNoSP; //滚动

sJumpU = sNoSP;//上升
sJumpM = sNoSP;//维持
sJumpD = sNoSP;//下落

sAtk = sNoSP; //攻击;
sInjured = sNoSP;//被攻击


///角色伤害系统属性
maxHP = 1;
maxMP = 0;
maxAP = 0;
HP =  1;
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

//live_init(object_get_name(self.object_index)+".lua");
//live_call("create", self);