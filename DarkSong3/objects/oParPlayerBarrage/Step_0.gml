///没HP质保
var ALM;

if  AtkListMax > 0
 ALM =   (ds_list_size(AtkList)>=AtkListMax)
else
 ALM = 0;

if (HP<=0 and !INV) or ALM
{
if BoomOn
 instance_create(x + 8, y + 8, oCratePoof);

var coins = random_range(4, 8);

for (var i = 0; i < coins; ++i)
   instance_destroy();
   }
   /*

if (place_meeting(x, y, oRopeSegment)) {
    with (instance_place(x, y, oRopeSegment))
        // Break rope joint 
        if (joint != -1) {
            physics_joint_delete(joint);
            joint = -1;
            
            // Destroy self if metal chain, but not if vine
            if (sprite_index == sLantern || sprite_index == sChainLink)
                with (other)
                    instance_destroy();
        }
}