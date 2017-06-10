/// @description / Y-Axis Centered
//// Set Offset!
//// Fill up available space (Number of Buttons / Available space)

var offset = 0.3; /// Top & Bottom OffSet!
var space   = 1 -(offset*2);   /// Available space for buttons
var spacing = (space/(size-1)); // Space inbetween each Button
//var spacing = (space/(size-1)); 


for(var i=0; i<size; i++){
    var Button = ds_list_find_value(buttons, i);
    
    var button = instance_create(__view_get( e__VW.XView, 0 )+ (__view_get( e__VW.WView, 0 )* center), 
    __view_get( e__VW.YView, 0 )+ (__view_get( e__VW.HView, 0 )* ((spacing*i)+offset) ), Button);
    
    button.pos          = i;
    button.halign       = halign;
    button.valign       = valign;
    button.mask_index   = mask;
    //button.scale = scale;
    
    ds_list_replace( buttons, i, button.id );
    
}



//instance_create(view_xview+ (view_wview* 0.5), view_yview+ (view_hview* 0.9), oBack);

/*





/// Set Button Positions //////

var columnCount, rowCount, column, row;
columnCount = 1; rowCount = 1; column = 1; row = 1;

/// Count how many columns you need
var numOfCol = (size/rowsMax);
var dec      = frac(dec);
if (dec > 0) numOfCol++;


repeat(ds_list_size(buttons)){
    if (columnCount > columnMax) column++; columnCount = 1;
    
    var XOff = (c
    
    XOff = (center * spacingC)- (spacingC/2 * column);
    
    
    
    /// Create button
    instance_create(view_xview + (view_wview* width), view_yview +(view_hview* height), Button);
    
}

