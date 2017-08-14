/// @description  TGMS_TargetExists(target,deactivated)
/// @function  TGMS_TargetExists
/// @param target
/// @param deactivated

if (argument1)
{
    if (instance_exists(argument0)) { return true; }

    instance_activate_object(argument0);
    
    if (instance_exists(argument0))
    {
        instance_deactivate_object(argument0);
        return true;
    }
}

return (instance_exists(argument0));

