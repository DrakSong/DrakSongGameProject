///没HP质保



var ALM;
if  AtkListMax > 0
 ALM =   (ds_list_size(AtkList)>=AtkListMax)
else
 ALM = 0;

if (HP<=0 and !INV) or ALM
{
   instance_destroy();
}

