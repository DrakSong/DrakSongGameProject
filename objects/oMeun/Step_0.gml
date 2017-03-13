///Title
if _Mode = "Title" {
    if KeyGet("上", 2) {
        _Sel--
    };
    if KeyGet("下", 2) {
        _Sel++
    };
    _Sel = MinMax(_Sel, 0, 3);
    //触发选中
    if KeyGet("A", 2) {
        var _S = _Sel;
        _Sel = false;
        switch (_S) {
        case 0:
            ShowMessage("LoadGame");
            _Mode = "LoadGame";
            break;
        case 1:
            ShowMessage("NewGame");
            _Mode = "NewGame";
            break;
        case 2:
            ShowMessage("Option");
            _Mode = "Option";
            break;
        case 3:
            game_end();
            break;

        }
    }

}


/*

/* */
///OPrion
if _Mode = "Option" {
    if KeyGet("上", 2) {
        _Sel--
    };
    if KeyGet("下", 2) {
        _Sel++
    };
    _Sel = MinMax(_Sel, 0, 3);
    //触发选中
    //if KeyGet('A', 2) 
    {
        var _S = _Sel;
      
          var Vol = global.GameInfo[?"设置"];
  // Vol =/100;
        switch (_S) {
        case 0:
           {
           if KeyGet("左",0)  {Vol[?"BGM音量"]--};
           if KeyGet("右",0)  {Vol[?"BGM音量"]++};
           Vol[?"BGM音量"] = MinMax(Vol[?"BGM音量"],0,100);
           if KeyGet("左",0)or KeyGet("右",0){
           audio_sound_gain(BGMIndex(),Vol[?"BGM音量"]/100,0)
           }
           }
            break;
        case 1:
            if KeyGet("左",0)  Vol[?"音效音量"]--;
            if KeyGet("右",0)  Vol[?"音效音量"]++;
            Vol[?"音效音量"] = MinMax(Vol[?"音效音量"],0,100);
            break;
        case 2:
            if KeyGet("左",2)  Vol[?"窗口倍数"]-=0.5;
            if KeyGet("右",2)  Vol[?"窗口倍数"]+=0.5;
            Vol[?"窗口倍数"] = MinMax(Vol[?"窗口倍数"],1,5);
            
            if KeyGet("左",2)or KeyGet("右",2){WinSet(Vol[?"窗口倍数"])}
            break;
        case 3:
        if KeyGet("A",2){
           ShowMessage("Title");  _Sel = false;_Mode = "Title"; GameInfoSave();}
            break;

        }
    }

}


/*

/* */
///NewGame;
if _Mode = "NewGame"
{
BGMStop();
room_goto_next();
}

/* */
///LoadGame
if _Mode = "LoadGame"
{


    if KeyGet("上", 2) {
        _Sel--
    };
    if KeyGet("下", 2) {
        _Sel++
    };
    _Sel = MinMax(_Sel, 0, 3);
    //触发选中
    if KeyGet("A", 2) {
        var _S = _Sel;
      
        switch (_S) {
        case 0:
       
            break;
        case 1:
        
            break;
        case 2:
           
            break;
        case 3:
           ShowMessage("Title");  _Sel = false; ;_Mode= "Title";
            break;

        }
    }

}






surface_set_target(surf);
surface_reset_target();

