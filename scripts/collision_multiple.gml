///collision_multiple(x, y, object)
///returns a ds_list of all objects in collision with the object's bounding box
///at a given position
var x1 = argument0;
var y1 = argument1;
var obj = argument2;
var list = ds_list_create();
do
{
    var hit = instance_place(x1, y1, obj);
    if (hit != noone)
    {
        ///Add the colliding object to the list then
        ///deactivate it so that we don't collide with it again.
        ///It'll be reactivated later on...
        ds_list_add(list, hit);
        instance_deactivate_object(hit);
    }
} until (hit == noone);

///Reactivate all the objects which were deactivated
if (ds_list_size(list) > 0)
for (var i = 0; i < ds_list_size(list); i++)
{
    instance_activate_object(list[|i]);
}

///Return the list of objects OR noone
return list;
