var step=0, qlist
=argument1, val='';

if !argument0[| 0]
{
    qlist_ind++
    while(!(step=0 and string(val)='}') and !ds_list_empty(qlist))
    {
        val=qlist[| qlist_ind]
        qlist_ind++
        if string(val)='{' step++
        else if string(val)='}' step--
    }
}
else
{
    var nlist=ds_list_create(), ind=qlist_ind;
        
    while(val!='while')
    {
        val=qlist[| qlist_ind]
        qlist_ind--
    }
    while(val!='(')
    {
        val=qlist[| qlist_ind]
        qlist_ind--
    }
    while(!(step=0 and string(val)='}') and !ds_list_empty(qlist))
    {
        val=qlist[| qlist_ind]
        ds_list_add(nlist, val)
        qlist_ind++
        if string(val)='{' step++
        else if string(val)='}' step--
    }
    while(!ds_list_empty(nlist))
    {
        ds_list_insert(qlist, qlist_ind, nlist[| 0])
        ds_list_delete(nlist, 0)
    }
}
