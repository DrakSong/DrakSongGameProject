var list=ds_list_create(), stack, stack_i=0, qlist=ds_list_create(), symb;
ds_list_copy(list,argument0)
trash_add(list, ds_type_list)

for(i=0;i<ds_list_size(list);i++)
{
    symb=list[| i]
    if string(symb)='}'
    {
        while(stack_i>0 and stack[stack_i-1]!='{')
        {
            ds_list_add(qlist,stack[stack_i-1])
            stack_i--
        }
        stack_i--
        ds_list_add(qlist,'}')
    }
    else if string(symb)=')'
    {
        while(stack_i>0 and stack[stack_i-1]!='(')
        {
            ds_list_add(qlist, stack[stack_i-1])
            stack_i--
        }
        if stack_i>1 
        {
            ds_list_add(qlist, stack[stack_i-2])
            stack_i-=2
        }
    }
    else if string(symb)=','
    {
        while(stack_i>0 and stack[stack_i-1]!='(')
        {
            ds_list_add(qlist, stack[stack_i-1])
            stack_i--
        }
    }
    else if lang_is_oper(string(symb))
    {
        while(stack_i>0 and (!global.as[? symb] and (global.pr[? symb]<=global.pr[? stack[stack_i-1]])
                                                 or (global.as[? symb] and global.pr[? symb]<global.pr[? stack[stack_i-1]])))
        {
            ds_list_add(qlist, stack[stack_i-1])
            stack_i--
        }
        if symb!=';'
        {
            stack[stack_i]=symb
            stack_i++
        }
    }
    else if lang_is_func(string(symb))
    {
        stack[stack_i]=symb
        stack_i++
    }
    else if string(symb)='(' or string(symb)='{'
    {
        ds_list_add(qlist, symb)
        stack[stack_i]=symb
        stack_i++
    }
    else
    {
        ds_list_add(qlist, symb)
    }
}

while(stack_i>0)
{
    ds_list_add(qlist, stack[stack_i-1])
    stack_i--
}

return qlist
