/// @description / Arrange all the buttons to the Center
//// Add spacing for the Row/Column 
//// 


var column = 0;

for(var i=1; i<size+1; i++){
    if (i>rowsMax) column++ 
    var rowNum = i - (column* rowsMax);
    var rowOff = rowNum * spacing;
    
    var Button = ds_list_find_value(buttons, i-1);
    
    instance_create(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5), __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* (rowOff)), Button);
    
}



var offset = 0.2; /// Top & Bottom OffSet!

var space   = 1 -(offset*2);   /// Available space for buttons
var spacing = (space/(size-1)); // Space inbetween each Button


for(var i=0; i<size; i++){
    var Button = ds_list_find_value(buttons, i);
    
    instance_create(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* 0.5), __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* ((spacing*i)+offset) ), Button);
    
}
