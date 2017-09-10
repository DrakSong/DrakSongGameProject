/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

if Col = true and OtherAtk
{
if other.OtherAtk
 {var Ot = instance_create_layer(x+6*oParPlayer.facing,y-8,"lDropObject",oGet)
 Ot.OtherAtk = other.OtherAtk}
 other.OtherAtk = OtherAtk
}


/*
if Col =  true
{
var PMap = oTaPuLo.Map

var PA =  PMap[?"A"]
var PAN =  PA[?"名字"]
var PAM = PA[?"持有上限"]

var PB =  PMap[?"B"]
var PBN =  PB[?"名字"]
var PBM = PB[?"持有上限"]

//啥都没有
if PAN = "" and PBN = ""
{
PA[?"名字"] = Map[?"名字"]
var O = PA[?"数量"]
PA[?"数量"] += Map[?"数量"];
PA[?"数量"] = min(PA[?"数量"],Map[?"持有上限"])
Map[?"数量"] -= Map[?"持有上限"] - O;
PA[?"持有上限"] = Map[?"持有上限"] 
}

//备用空掉后直接加入 并且背包没有
if PBN = "" and PA[?"名字"]  != Map[?"名字"]
{
PB[?"名字"] = Map[?"名字"]
var O = PB[?"数量"]
PB[?"数量"] += Map[?"数量"];
PB[?"数量"] = min(PB[?"数量"],Map[?"持有上限"])
Map[?"数量"] -= Map[?"持有上限"] - O;
PB[?"持有上限"] = Map[?"持有上限"] 
}

//使用中同名
if Map[?"数量"] != -1
{
if PAN = Map[?"名字"] and (PA[?"数量"]<Map[?"持有上限"])and PBN != Map[?"名字"]
{
var O = PA[?"数量"]
PA[?"数量"] += Map[?"数量"];
PA[?"数量"] = min(PA[?"数量"],Map[?"持有上限"])
Map[?"数量"] -= Map[?"持有上限"] - O;
PA[?"持有上限"] = Map[?"持有上限"] 
}
//备用的同名
if PBN = Map[?"名字"]and (PB[?"数量"]<Map[?"持有上限"]) and PAN != Map[?"名字"]
{
//PB[?"名字"] = Map[?"名字"]
var O = PB[?"数量"]
PB[?"数量"] += Map[?"数量"];
PB[?"数量"] = min(PB[?"数量"],Map[?"持有上限"])
Map[?"数量"] -= Map[?"持有上限"] - O;
PB[?"持有上限"] = Map[?"持有上限"] 
}
}
//两个都满了 替换掉 
if PAN != "" and PBN != ""
{
if PAN != Map[?"名字"] and PBN != Map[?"名字"]
{
var ON = PA[?"名字"]
var OS = PA[?"数量"]
PA[?"名字"] = Map[?"名字"]
var O = PA[?"数量"]
PA[?"数量"] += Map[?"数量"];
PA[?"数量"] = Map[?"数量"]
Map[?"数量"] = 0;
PA[?"持有上限"] = Map[?"持有上限"] 

var OO;
switch (ON)
{
    case "小刀": OO = oGetDagger; break;
	  case "斧头": OO = oGetAxe; break;
	    case "圣水": OO = oGetHolyWater; break;
		  case "回旋镖": OO = oGetBoomerang; break;
   // default: STATEMENT;
}
 

var Ot = instance_create(x+6*oParPlayer.facing,y-8,OO)
//Ot.Map[?"名字"] = ON;
Ot.Map[?"数量"] = OS;
//Ot.sprite_index = sAxe
Ot.vx = oParPlayer.facing

}
}
if Map[?"数量"] <= 0
{
instance_destroy()
}
}