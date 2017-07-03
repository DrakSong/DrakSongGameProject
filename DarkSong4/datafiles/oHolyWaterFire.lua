function create(self)


self.INV = false;--无敌否
self.HP =  1;

--攻击
self.ATK = 1;--攻击力
self.ASTI = 60--攻击照成硬直
self.AFlyH = 1;--击飞玩家
self.AFlyV = 1;--击飞玩家
self.AtkListMax = -1;--穿透

self.AtkListCleanTime =15


AlarmSet(0,15)
AlarmSet(1,60*3)
end
function step(self)
AtkBoxCollision(oEnemy)
end

function draw(self)
draw_self(self);
end

