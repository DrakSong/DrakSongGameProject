// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_solid
global.__objectDepths[1] = -10; // obj_of_interest
global.__objectDepths[2] = 0; // obj_solid_of_interest
global.__objectDepths[3] = 0; // obj_blank
global.__objectDepths[4] = -999999; // obj_control
global.__objectDepths[5] = 999999; // obj_bck_hills
global.__objectDepths[6] = 0; // obj_player
global.__objectDepths[7] = 0; // obj_ground
global.__objectDepths[8] = 0; // obj_barrier
global.__objectDepths[9] = 0; // obj_sign
global.__objectDepths[10] = 0; // obj_star


global.__objectNames[0] = "obj_solid";
global.__objectNames[1] = "obj_of_interest";
global.__objectNames[2] = "obj_solid_of_interest";
global.__objectNames[3] = "obj_blank";
global.__objectNames[4] = "obj_control";
global.__objectNames[5] = "obj_bck_hills";
global.__objectNames[6] = "obj_player";
global.__objectNames[7] = "obj_ground";
global.__objectNames[8] = "obj_barrier";
global.__objectNames[9] = "obj_sign";
global.__objectNames[10] = "obj_star";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for