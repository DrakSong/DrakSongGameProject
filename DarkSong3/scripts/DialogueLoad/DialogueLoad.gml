
 
if (Next )
{if (global.jishu<global.zishu)
 {
     global.jishu=global.zishu;
     Next = 0;
 }
 else
 { //ShowMessage(global.i)
//  if ds_list_size(C)<=global.i
  
   


  global.i+=1;
 if global.i =  ds_list_size(Text)
 {
instance_destroy();
 exit;
// show_message("????")
 }  
 
	 
	
   // global.beijing=ini_read_string("txt"+string(global.i),"beijing","");
    //global.lihuil=ini_read_string("txt"+string(global.i),"lihil","");
    //global.lihuir=ini_read_string("txt"+string(global.i),"lihuir","");
   // global.textk=ini_read_real("txt"+string(global.i),"textk","");
 //   global.namek=ini_read_real("txt"+string(global.i),"namek","");
    var T = Text[|global.i]
    global.text=T[?"Text"]//ini_read_string("txt"+string(global.i),"text","");
    global.name=T[?"Name"]//ini_read_string("txt"+string(global.i),"name","");
	global.Lihui = T[?"Image"];
    global.huanchun="";
    global.zishu=string_length(global.text)+1;
    global.jishu=0;
	
    //mouse_clear(mb_left);
    
    
 };
};
