/// @description  SET KEY

if (keyboard_key != global.Escape){
var newKey = keyboard_key;
    owner.key = newKey; 
    owner.blink = false;
    
    /// Set Keys !
    with(owner){
        variable = key; //Set 'variable' for the controls_setKeys script
        controls_setKeys(num);
    }
}
    
   // instance_destroy();
   alarm[0] = 1;


