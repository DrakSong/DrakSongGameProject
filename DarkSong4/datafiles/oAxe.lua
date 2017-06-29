function create(self)

self.INV = false;--无敌否
self.HP =  1;

--攻击
self.ATK = 0;--攻击力
self.ASTI = 60--攻击照成硬直
self.AFlyH = 0;--击飞玩家
self.AFlyV = 0;--击飞玩家
self.AtkListMax = -1;--穿透
self.hspeed = oParPlayer.facing*1.68
self.vspeed = -7
end
function step(self)
AtkBoxCollision(oEnemy)

if (self:collision_circle(self.x, self.y, 4, oParSolid, 1, 0) >0.5) then
   --instance_create(self.x, self.y, oHolyWatrFire)
    end
self.vspeed = self.vspeed +0.5
end
function draw(self)

draw_self(self);
end
