Next = KeyGet("A",2)// keyboard_check_pressed(ord('X'));// mouse_check_button(mb_left)


 
 
if (Next )
{if (jishu<zishu)
 {
    jishu=zishu;
     Next = 0;
 }
 else
 { //ShowMessage(global.i)
//  if ds_list_size(C)<=global.i
  
   


 i+=1;
 if i =  ds_list_size(Text)
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
    var T = Text[|i]
   text=T[?"Text"]//ini_read_string("txt"+string(global.i),"text","");
   name=T[?"Name"]//ini_read_string("txt"+string(global.i),"name","");
	Lihui = T[?"Image"];
    huanchun="";
    zishu=string_length(text)+1;
   jishu=0;
	
    //mouse_clear(mb_left);
    
    
 };
};
