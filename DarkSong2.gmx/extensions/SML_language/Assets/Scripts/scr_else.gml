var step=0, qlist=argument1, val='';

if global.if_stat
{
    while(!(step=0 and string(val)='}') and !ds_list_empty(qlist))
    {
        val=qlist[| qlist_ind]
        qlist_ind++
        if string(val)='{' step++
        else if string(val)='}' step--
    }
    global.if_stat=-1
}
