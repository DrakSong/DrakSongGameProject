/// @description Insert description here
// You can write your code in this editor


var TextK;
TextK[0] = global.MeunSelectMap[?"上"]+"  :  "+KeyChr(global.kUp);
TextK[1] = global.MeunSelectMap[?"下"]+"  :  "+KeyChr(global.kDown);
TextK[2] = global.MeunSelectMap[?"左"]+"  :  "+KeyChr(global.kLeft);
TextK[3] = global.MeunSelectMap[?"右"]+"  :  "+KeyChr(global.kRight);
TextK[4] = global.MeunSelectMap[?"攻击"]+"  :  "+KeyChr(global.kAttack);
TextK[5] = global.MeunSelectMap[?"跳跃"]+"  :  "+KeyChr(global.kJump);
TextK[6] = global.MeunSelectMap[?"切换"]+"  :  "+KeyChr(global.kChange);
TextK[7] = global.MeunSelectMap[?"翻滚"]+"  :  "+KeyChr(global.kRoll);

TextK[8] = global.MeunSelectMap[?"返回"]
for (i=0; i<4; i+=1)
{
   draw_text_button(0,i*16*(32/8),TextK[i],Post ==i)
};
draw_text_button(0,5*16*(32/8),TextK[8],Post ==8)

for (i=4; i<8; i+=1)
{
   draw_text_button(1280/2,(i-4)*16*(32/8),TextK[i],Post ==i)
};




