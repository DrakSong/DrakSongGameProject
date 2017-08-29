OldDoor =  other.id//GoToDoor
OldRoom = room



TargetGoTo = true;
TargetGoToVX = vx;
TargetGoToVY = vy;

TargetDoorXscale = other.image_xscale
TargetDoorYscale = other.image_yscale

TargetX =x- other.bbox_left

x = -10000
y = -10000

show_debug_message("经过" +string(other.GoToDoor)+ "去往"+room_get_name(other.GoToRoom))
room_goto(other.GoToRoom)