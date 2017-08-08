function create(self)

self.INV = false;--无敌否
self.HP =  1;

--攻击
self.ATK = 0;--攻击力
self.ASTI = 60--攻击照成硬直
self.AFlyH = 1;--击飞玩家
self.AFlyV = 4.5;--击飞玩家
self.AtkListMax = -1;--穿透
self.speed = self.facing*3

--AlarmSet(0,1)
--AlarmSet(1,1)

end
function step(self)

AtkBoxCollision(oEnemy)

end

