///collision_circle_multiple(x1, y1, radius, object, prec, notme)
///returns a ds_list of all objects in collision with the shape
var x1 = argument0;
var y1 = argument1;
var r = argument2;
var obj = argument3;
var prec = argument4;
var notme = argument5;
var list = ds_list_create();
do
{
    var hit = collision_circle(x1, y1, r, obj, prec, notme);
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
