action_inherited();
///没HP质保
if HP <=0
{
 instance_create(x + 8, y + 8, oCratePoof);

var coins = random_range(0, 3);

for (var i = 0; i < coins; ++i)
    instance_create(x , y - 16, oCoin);
   instance_destroy();
   }

