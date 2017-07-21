// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_solid

global.__objectNames[0] = "obj_solid";

global.__objectDepths[11] = 0; // oGBoy
global.__objectDepths[12] = -1; // oShader
global.__objectDepths[13] = -1; // oGrad


global.__objectNames[11] = "oGBoy";
global.__objectNames[12] = "oShader";
global.__objectNames[13] = "oGrad";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for