function create(self)

self.INV = false;--无敌否
self.HP =  1;

--攻击
self.ATK = 0;--攻击力
self.ASTI = 12--攻击照成硬直
self.AFlyH = 0;--击飞玩家
self.AFlyV = 0;--击飞玩家
self.AtkListMax = -1;--穿透
self.hspeed = oParPlayer.facing*3
end
function step(self)
AtkBoxCollision(oEnemy)
end
function draw(self)
draw_self(self);
end
