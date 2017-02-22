///nput_init()
//Call this ONCE at the start of your game.
//Nput is created by Andrew McCluskey (nalgames.com)

//I recommend changing these to constants/macros,
//just so they light up when you use them.

//Key IDs:
globalvar K_NONE;   K_NONE=0;
globalvar K_LEFT;   K_LEFT=1;
globalvar K_RIGHT;  K_RIGHT=2;
globalvar K_UP;     K_UP=3;
globalvar K_DOWN;   K_DOWN=4;
globalvar K_SELECT; K_SELECT=5;
globalvar K_BACK;   K_BACK=6;
globalvar K_JUMP;   K_JUMP=7;

//State IDs:
globalvar P_PRESSED;  P_PRESSED=0;
globalvar P_HELD;     P_HELD=1;
globalvar P_RELEASED; P_RELEASED=2;

//"Repeater" IDs:
globalvar IX_LEFT;  IX_LEFT=1001;
globalvar IX_RIGHT; IX_RIGHT=1002;
globalvar IX_UP;    IX_UP=1003;
globalvar IX_DOWN;  IX_DOWN=1004;

//(Don't change these to macros)
for(var i=K_NONE;i<=20;i++ )
{
    global.InputRptSet[i]=30;
    global.InputRptCdn[i]=30;
    global.InputRptVal[i]=30;
}
