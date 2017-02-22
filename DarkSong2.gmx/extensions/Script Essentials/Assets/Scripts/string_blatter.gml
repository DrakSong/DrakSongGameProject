///string_blatter(string,targetstring)
//This will transition a string towards a target string
//in a funky way, almost in a glitchy way.

var todraw,totarg,totarg2,tx;

todraw=argument0;
totarg=argument1;

repeat( max(1, floor(string_length(argument1)/12) ) )
{
    if string_length(todraw)<string_length(totarg)
    {
        todraw+=chr(48+irandom(74))
        if string_length(todraw)<string_length(totarg) todraw+=chr(48+irandom(74))
    }
    
    else if string_length(todraw)>string_length(totarg)
    {
        todraw=string_copy(todraw,1,string_length(todraw)-1)
    }
    
    else if todraw!=totarg
    {
        do tx=1+irandom(string_length(todraw)-1)
        until string_char_at(todraw,tx)!=string_char_at(totarg,tx)
        
        todraw2=todraw
        
        todraw=string_copy(todraw2,1,tx-1)
               +choose(chr(48+irandom(74)),string_copy(totarg,tx,1),string_copy(totarg,tx,1))
               +string_copy(todraw,tx+1,string_length(todraw2)-tx)    
    }
}

return todraw;
