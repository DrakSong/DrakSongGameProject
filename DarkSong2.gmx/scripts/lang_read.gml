var list=ds_list_create(), code=argument0, symb, word, j;

if is_real(code) return -1;

for(var i=1;i<string_length(code)+1;i++)
{
    symb=string_copy(code,i,1)
    word=''
    
    if symb!=' '
    if global.symb_map[? symb]=0
    {
        while(i<string_length(code)+1)
        {
            word+=symb
            symb=string_copy(code,i+1,1)
            if (global.symb_map[? symb]!=0 and global.symb_map[? symb]!=1) or symb=' '
            {
                break
            }
            
            i++
        }
        ds_list_add(list,word)
        if word='else' ds_list_add(list,'(',')')
    }
    else if global.symb_map[? symb]=1
    {
        while(i<string_length(code)+1)
        {
            word+=symb
            symb=string_copy(code,i+1,1)
            if global.symb_map[? symb]!=1 or symb=' '
            {
                break
            }
            i++
        }
        word=real(word)
        ds_list_add(list,word)
    }
    else if symb='"' or symb="'"
    {
        j=global.symb_map[? symb]
        while(i<string_length(code)+1)
        {
            word+=symb
            symb=string_copy(code,i+1,1)
            if global.symb_map[? symb]=j
            {
                break
            }
            i++
        }
        i++
        ds_list_add(list,word)
    }
    else
    {
        ds_list_add(list,symb)
    }
}

return list;
