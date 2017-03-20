///没HP质保
var ALM;
if  AtkListMax > 0 
 ALM =   (ds_list_size(AtkList)>AtkListMax)
else
 ALM = 0;

if (HP<=0 and !INV) or ALM
{
 instance_create(x + 8, y + 8, oCratePoof);

var coins = random_range(4, 8);

for (var i = 0; i < coins; ++i)
    //instance_create(x , y - 16, oCoin);
   instance_destroy();
   }

