function create(self)

self.INV = false;--无敌否
self.HP =  1;

--攻击
self.ATK = 0;--攻击力
self.ASTI = 60--攻击照成硬直
self.AFlyH = 0;--击飞玩家
self.AFlyV = 0;--击飞玩家
self.AtkListMax = -1;--穿透
self.speed = 4

AlarmSet(0,60)
AlarmSet(1,60*5)

if oParPlayer.facing == 1 then
self.direction = 0


else

self.direction = 180
end
end

function step(self)
AtkBoxCollision(oEnemy)

if (self:collision_circle(self.x, self.y, 4, oParSolid, 1, 0) >0.5) then
   --instance_create(self.x, self.y, oHolyWatrFire)
    end
self.speed = self.speed - 0.2/2
end
function draw(self)

image_speed = 01
draw_self(self);
end
