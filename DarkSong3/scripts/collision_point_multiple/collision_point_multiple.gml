///collision_point_multiple(x, y, object, prec, notme)
///returns a ds_list of all objects in collision with the shape
var x1 = argument0;
var y1 = argument1;
var obj = argument2;
var prec = argument3;
var notme = argument4;
var list = ds_list_create();
do
{
    var hit = collision_point(x1, y1, obj, prec, notme);
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
