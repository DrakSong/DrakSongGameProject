///获取键盘信息

var V = global.GameInfo[?"实时变量"];
V = V[?"键盘信息"];

var K = V[?"按住"];
var KR = V[?"松开"];
var KP = V[?"按下"];

var GV = global.GameInfo[?"设置"];GV = GV[?"键盘信息"];

var Key;
 
Key[0] =  "上";
Key[1] =  "下";
Key[2] =  "左";
Key[3] =  "右";
Key[4] =  "A";
Key[5] =  "B";
Key[6] =  "L";
Key[7] =  "R";
Key[8] =  "P";



var i;
i = 0;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};
i = 1;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 2;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 3;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 4;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 5;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 6;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 7;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};

i = 8;
{
K[?Key[i]] = keyboard_check(GV[?Key[i]]);
KR[?Key[i]] = keyboard_check_released(GV[?Key[i]])
KP[?Key[i]] = keyboard_check_pressed(GV[?Key[i]])
};



///暂停处理
var G = global.GameInfo[?"实时变量"];

var V= G[?"键盘信息"];
var K = V[?"按住"];
var KR = V[?"松开"];
var KP = V[?"按下"];
var Ping = 0

//var BGM = global.GameInfo[?"实时变量"];
//var BGM = BGM[?'BGMIndex']

//键盘判定
if (KP[?"P"] == true) {
G[?"暂停"] ^=true;
}
                
 //暂停 
if (PauseGet() = true) and  KeyGet("P",2)== true and room!= rmTitle{
              
  
                audio_pause_all();
                instance_create(x,y,oPause);
             //show_message("?")
        
        }
//恢复
if (PauseGet() = false) and  KeyGet("P",2) == true{
               
                audio_resume_all();
                
        
        }
        
        

///摄像鸡
room_speed = 99999
ViewSet(0,1,1,oCamera);

///系统按钮
var kRestart, kExit, kPrev, kNext;


kRestart = keyboard_check_pressed(ord("R"));
kTitle = keyboard_check_pressed(ord("T"));
kExit    = keyboard_check_pressed(vk_escape);

if (kTitle) 
{game_restart();}
if (kRestart)
  // game_restart();
  room_restart();
if (kExit)
    game_end();
    


if keyboard_check_pressed(vk_home) global.Debug ^=true

game_set_speed(60,gamespeed_fps)

if keyboard_check_pressed(ord("I"))
{
{
for (var i = 0; i < 10; i += 1)
   {
  instance_create(random(room_width),random(room_height),oEAtkBull)
   }
}
}

//ShowMessage()