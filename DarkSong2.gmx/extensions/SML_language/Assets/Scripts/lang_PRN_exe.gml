var stack, stack_i=0, qlist=argument0, symb, val, exe_list;

qlist_ind=0

while (qlist_ind<=ds_list_size(qlist))
{
    symb=qlist[| qlist_ind]
    qlist_ind++
    if lang_is_oper(symb)
    {
        val=lang_oper_exe(symb,stack[stack_i-2],stack[stack_i-1])
        if string(val)='@ERROR@' return '@ERROR@'
        stack_i-=1
        stack[stack_i-1]=val
    }
    else if lang_is_func(symb)
    {
        exe_list=ds_list_create()
        trash_add(exe_list,ds_type_list)
        repeat(5000)
        {
            val=stack[stack_i-1]
            stack_i--
            if string(val)='(' break
            else
            {
                ds_list_insert(exe_list,0,lang_getvar(val))
            }
        }
        val=script_execute(global.func_map[? symb],exe_list, qlist)
        if string(val)='@ERROR@' return '@ERROR@'
        stack[stack_i]=val
        stack_i++
    }
    else
    {
        stack[stack_i]=symb
        stack_i++
    }
}
