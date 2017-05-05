/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码
/*action_inherited()


//左上角副武器
if Mode = 0{

draw_sprite_ext(sprUi,10+OtherAtkMode,16-8,8-1,1,1,0,c_white,1);

}
//draw_text(128,0,vx)

*//// @description 在这里插入描述
// 你可以在这个编辑器中写入代码
GuiSet(3)
draw_set_font(fWindow16)
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[?"数量"]
if  A[?"数量"]>0 or  A[?"数量"] = -1
{
draw_text(0,32,"正在使用的物品A 名字:"+string(AN)+" 数量:"+string(AS))
}
var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]

if  B[?"数量"]>0 or  B[?"数量"] = -1
{
draw_text(0,64,"在后备箱的物品B 名字:"+string(BN)+" 数量:"+string(BS))
}
GuiSet(1)