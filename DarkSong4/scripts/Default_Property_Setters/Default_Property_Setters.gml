/// @description  Default_Property_Setters()
/// @function  Default_Property_Setters
/*
    - To create your own property setter, create a new script and write: 
        
        // For instance variable
        argument1.variable = argument0;
        
        or...
        
        // For global variable
        global.variable = argument0;
        
    
    [Overview]
    argument0 = new value
    argument1 = affected target instance (if needed)
    variable  = specific variable you want to update
  
    
    - Script examples:
        
        /// strength__(value,instance)
        {
            argument1.strength = argument0;
        }
        
        /// health__(value)
        {
            health = argument0;
        }
    
    
    - It is advised to add custom property setters outside of Default_Property_Setters script
*/

