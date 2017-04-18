/// @description Insert description here
// You can write your code in this editor
//if onGround 
//{instance_change(oTaPuLo,0)}

xscale = 1;
yscale = 1;
if KeyGet("B", 0) and ! KeyGet("上", 0)  {
        vy = -2.2;
        instance_change(oTaPuLo, 0)
}
if KeyGet("下", 0) and ! collision_point(x, y + 2, oParSolid, 0, 0) {
        y += 2;
}
if KeyGet("下", 0) {
        var S = collision_point(x, y + 2, oParSolid, 0, 0) if S {
                y = S.bbox_top instance_change(oTaPuLo, 0)
        }
}
if KeyGet("上", 0)  and  instance_place(x, y - 16, oLT) {
        y -= 2
};
if KeyGet("上", 0)  and ! instance_place(x, y - 16, oLT) {
        vy = -2.2;vx=1.5*facing
        instance_change(oTaPuLo, 0)
};
//被打掉落
if instance_place(x, y, oParEnemyBarrage) and ! INV {
        instance_change(oTaPuLo, 0)
}
if KeyGet("左",0)facing = -1;
if KeyGet("左",0)facing = -1;


