///左上角的hp mp ap
//////////////////红HP////////////////////////
depth = -999999
var Xs = 16+8;//开始
var Xe = 16+MaxHP;//结束
var Y = 8//y
var W = min(100,HP/MaxHP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 0;
var Sm = 1;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};




//篮
//////////////////MP////////////////////////
var Xs = 16+8;//开始
var Xe = 16+MaxMP;//结束
var Y = 8+5//y
var W = min(100,MP/MaxMP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 2;
var Sm = 3;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};


//绿
//
////////////////////Ap/////////////////////
var Xs = 16+8;//开始
var Xe = 16+MaxAP;//结束
var Y = 8+5+5//y
var W = min(100,AP/MaxAP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 4;
var Sm = 5;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};

draw_sprite_ext(sprUi,9,16-8,8-1,1,1,0,c_white,1);

//左空位

depth = 0

action_inherited();
