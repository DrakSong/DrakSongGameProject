///AtkBoxCollisonRectangle(x,y,w,h,obj);
var X = argument0;
var Y = argument1;
var W = X + argument2;
var H = Y + argument3;
var Obj = argument4;


var C = collision_rectangle_multiple(X, Y, X+W, Y+H,Obj , 1, 0);

if C  and Obj = oParLife{

    for (var i = 0; i < ds_list_size(C); i += 1) {
        var T = ds_list_find_value(C, i).Cid;
        with(T) {
            vy = -2;
            HP -= 1;
        }

    };
}

