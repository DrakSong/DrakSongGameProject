/// @description Insert description here
// You can write your code in this editor

var List = TextList[| TextNo]
var str = List[? "Text"]

count += 1 count = min(count, string_length(str));
//逐渐播放时 按下确定全部显示
if (string_length(str) > count) and(keyboard_check_pressed(global.kAttack) or keyboard_check_pressed(vk_enter)) {

	count = string_length(str);
	//exit;
}

//逐渐播放结束后 下确定 下一句
if (string_length(str) = count) and(TextNo < ds_list_size(TextList) - 1) and(keyboard_check_pressed(global.kAttack) or keyboard_check_pressed(vk_enter))

{
	TextNo++;
	count = 0;
	//exit;
}
//都播放结束 关闭
if (string_length(str) = count) and(TextNo = ds_list_size(TextList) - 1) and(keyboard_check_pressed(global.kAttack) or keyboard_check_pressed(vk_enter))

{
	instance_destroy();
}

//最后绘制
draw_set_color(c_red)
//show_debug_message(draw_text_custom (10,10,string_typing_custom(str,count),1))
var Text = draw_text_custom( - 100000000000, -10000000000, string_typing_custom(str, count), 1)
//draw_text_custom (10,10,string_typing_custom(str,count),1)

//人物绘制
var XX = 1024;
var YY = 720 + 32;
var XS = 0.6;
var YS = 1;
texture_set_interpolation(true) ;
draw_sprite_ext(XiTa, 0, XX, YY, XS, XS, 0, c_white, 1) ;
texture_set_interpolation(false)

var XX = X - (Text[1] div 32) *32+32;
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
draw_sprite(sprite40,0,XX+(W)*32, Y+ (1)*32)

var XX = X - (Text[1] div 32) *32+32;
var YY = Y;

texture_set_interpolation(true)
draw_set_color(c_white) draw_text_custom(XX + 32, YY + 32, string_typing_custom(str, count), 1)
texture_set_interpolation(false)