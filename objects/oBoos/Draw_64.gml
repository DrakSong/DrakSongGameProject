///BossHP
//参数设定

{
var Xs = floor( 256*((1-0.618)/2));//开始
var Xe = floor(Xs + 256*0.618)-1;//结束
var Y = floor((144*0.618)+ (144*0.618)*0.618*0.618);//y

var W = min(100,HP/MaxHP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度

//绘制骷髅头
draw_sprite_ext(sprUi,8,Xs-8-4,Y,0.5,0.5,0,c_white,1);

//绘制开头
draw_sprite_ext(sprUi,6,Xs,Y,1,0.5,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,6,Xe+1,Y,1,0.5,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,7,Xs+1+i,Y,1,0.5,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,7,Xs+1+i,Y,1,0.5,0,c_white,1);
};

}

