///第一次打开游戏
global. GameInfo = json_decode(GameInfoString()
)
//载入初步的键盘信息；
var V=global.GameInfo[?"设置"];
var K = V[?"键盘信息"];

 K[?"上"] = vk_up;
 K[?"下"] = vk_down;
 K[?"左"] = vk_left;
 K[?"右"] = vk_right;
 K[?"A"] = ord("X");
 K[?"B"] = ord("Z");
 K[?"L"] = ord("A");
 K[?"R"] = ord("C");
 K[?"P"] = ord("P");




Debug = false;




