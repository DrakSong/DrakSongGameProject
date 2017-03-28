/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码
action_inherited()


//左上角副武器
if Mode = 0{
if OtherAtkMode ="BS"
draw_sprite_ext(sprUi,10,16-8,8-1,1,1,0,c_white,1);

if OtherAtkMode ="FT"
draw_sprite_ext(sprUi,11,16-8,8-1,1,1,0,c_white,1);
}
draw_text(128,0,vx)