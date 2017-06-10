/// @description createOne(object)
/// @function createOne
/// @param object

var obj = argument0;

if (instance_exists(obj)){
    instance_destroy();
}

instance_create(x,y,obj);


