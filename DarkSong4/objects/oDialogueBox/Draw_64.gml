/// @description Insert description here
// You can write your code in this editor
var List = TextList[| TextNo]
var str = List[? "Text"]


//最后绘制
//得到长宽高字数的
var Text = draw_text_custom( - 3200000000000000, -320000000000, string_typing_custom(str, count), 1)

//draw_text_custom (10,10,str,1)
//人物绘制
var XX = 1024;
var YY = 720 + 32;
var XS = 0.6;
var YS = 1;
texture_set_interpolation(true);
draw_sprite_ext(XiTa, 0, XX, YY, XS, XS, 0, c_white, 1);
texture_set_interpolation(false)

var XX = X - (Text[1] div 32) * 32 + 32;
var YY = Y;

//1
draw_sprite(sprite40, 1, XX, YY)
//2
for (W = 1; W < (Text[1] div 32) + 2; W += 1) {
    draw_sprite(sprite40, 2, XX + W * 32, YY)
};
//3
draw_sprite(sprite40, 3, XX + W * 32, YY)

var YY = 32 + Y;

for (H = 0; H < (Text[2] div 32) + 1; H += 1) {
    //4
    draw_sprite(sprite40, 4, XX, YY + H * 32)
    //5
    for (W = 1; W < (Text[1] div 32) + 2; W += 1) {
        draw_sprite(sprite40, 5, XX + W * 32, YY + H * 32)
    };
    //6
    draw_sprite(sprite40, 6, XX + W * 32, YY + H * 32)
};

var YY = 64 + H * 32 - 32 + Y;
//7
draw_sprite(sprite40, 7, XX, YY)
//8
for (W = 1; W < (Text[1] div 32) + 2; W += 1) {
    draw_sprite(sprite40, 8, XX + W * 32, YY)
};
//9
draw_sprite(sprite40, 9, XX + W * 32, YY)

//0
draw_sprite(sprite40, 0, XX + (W) * 32, Y + (1) * 32)

var XX = X - (Text[1] div 32) * 32 + 32;
var YY = Y;

texture_set_interpolation(true)

draw_set_color(c_white) ;
draw_set_font(global.Font)
 draw_text_custom(XX + 32, YY + 32, string_typing_custom(str, count), 1) texture_set_interpolation(false)