if (Next )
{if (global.jishu<global.zishu)
 {
     global.jishu=global.zishu;
     Next = 0;
 }
 else
 {
    global.i+=1;
    global.beijing=ini_read_string("txt"+string(global.i),"beijing","");
    global.lihuil=ini_read_string("txt"+string(global.i),"lihil","");
    global.lihuir=ini_read_string("txt"+string(global.i),"lihuir","");
    global.textk=ini_read_real("txt"+string(global.i),"textk","");
    global.namek=ini_read_real("txt"+string(global.i),"namek","");
    global.text=ini_read_string("txt"+string(global.i),"text","");
    global.name=ini_read_string("txt"+string(global.i),"name","");
    global.huanchun="";
    global.zishu=string_length(global.text)+1;
    global.jishu=0;
    mouse_clear(mb_left);
    
    
 };
};
