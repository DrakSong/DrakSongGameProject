///没HP质保


if hspeed>0
{
facing = 1
image_xscale = facing
}
if hspeed<0
{
facing = -1
image_xscale = facing

}

var ALM;
if  AtkListMax > 0
 ALM =   (ds_list_size(AtkList)>=AtkListMax)
else
 ALM = 0;

if (HP<=0 and !INV) or ALM
{
   instance_destroy();
}


live_update();
live_call("step", id);
