///破坏就会自爆
if HP<=0 and !INV 
{
instance_create(x + 8, y + 8, oCratePoof);

var coins = random_range(4, 8);

for (var i = 0; i < coins; ++i)
    instance_create(x , y - 16, oCoin);
instance_destroy();
}

