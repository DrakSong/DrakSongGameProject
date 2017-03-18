// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // oBlock
global.__objectDepths[1] = 0; // oSlope
global.__objectDepths[2] = 6; // oJumpThru
global.__objectDepths[3] = 1; // oPushBlock
global.__objectDepths[4] = 0; // oRailMoverH
global.__objectDepths[5] = 0; // oSwitchMoverH
global.__objectDepths[6] = 0; // oBounceMover
global.__objectDepths[7] = 0; // oSwitchMoverV
global.__objectDepths[8] = 1; // oPathMover
global.__objectDepths[9] = 2; // oRail
global.__objectDepths[10] = 2; // oRail2
global.__objectDepths[11] = 0; // oCircleMover
global.__objectDepths[12] = 2; // oRailTop
global.__objectDepths[13] = 2; // oRailBottom
global.__objectDepths[14] = 2; // oRailRight
global.__objectDepths[15] = 0; // object60
global.__objectDepths[16] = 0; // oNPCSave
global.__objectDepths[17] = 0; // oNPC
global.__objectDepths[18] = -1600; // oLightSurface
global.__objectDepths[19] = 2; // oRailLeft
global.__objectDepths[20] = 0; // oLing
global.__objectDepths[21] = 1316134911; // objMoon
global.__objectDepths[22] = 0; // oRailMoverV
global.__objectDepths[23] = 0; // oDoor
global.__objectDepths[24] = -1600; // oLight
global.__objectDepths[25] = 0; // oParEntity
global.__objectDepths[26] = 0; // oParBarrage
global.__objectDepths[27] = 0; // object45
global.__objectDepths[28] = 0; // oParPlayer
global.__objectDepths[29] = 0; // oParLife
global.__objectDepths[30] = 0; // oParCrate
global.__objectDepths[31] = -1215752191; // oParCBox
global.__objectDepths[32] = 0; // oParEnemy
global.__objectDepths[33] = 0; // oParNPC
global.__objectDepths[34] = 0; // oParRail
global.__objectDepths[35] = 0; // oParDecorate
global.__objectDepths[36] = 0; // oParSolid
global.__objectDepths[37] = 0; // oParJumpThru
global.__objectDepths[38] = -10; // oGBAShader
global.__objectDepths[39] = 0; // oCamera
global.__objectDepths[40] = 1; // oCoin
global.__objectDepths[41] = 1; // oCratePoof
global.__objectDepths[42] = -10; // oParticle
global.__objectDepths[43] = 0; // oPause
global.__objectDepths[44] = 0; // oMeun
global.__objectDepths[45] = -99999999; // oGameSystemNo
global.__objectDepths[46] = 0; // oDialogueBox
global.__objectDepths[47] = -9999999; // oVK
global.__objectDepths[48] = 0; // oFT
global.__objectDepths[49] = 0; // oTaPuLo
global.__objectDepths[50] = -1; // oERun
global.__objectDepths[51] = -1; // oBoos
global.__objectDepths[52] = 0; // oEFT
global.__objectDepths[53] = -99999999; // oGameSystem
global.__objectDepths[54] = -1; // oIdle
global.__objectDepths[55] = -1; // oEAtkBull
global.__objectDepths[56] = -1; // oFxDust


global.__objectNames[0] = "oBlock";
global.__objectNames[1] = "oSlope";
global.__objectNames[2] = "oJumpThru";
global.__objectNames[3] = "oPushBlock";
global.__objectNames[4] = "oRailMoverH";
global.__objectNames[5] = "oSwitchMoverH";
global.__objectNames[6] = "oBounceMover";
global.__objectNames[7] = "oSwitchMoverV";
global.__objectNames[8] = "oPathMover";
global.__objectNames[9] = "oRail";
global.__objectNames[10] = "oRail2";
global.__objectNames[11] = "oCircleMover";
global.__objectNames[12] = "oRailTop";
global.__objectNames[13] = "oRailBottom";
global.__objectNames[14] = "oRailRight";
global.__objectNames[15] = "object60";
global.__objectNames[16] = "oNPCSave";
global.__objectNames[17] = "oNPC";
global.__objectNames[18] = "oLightSurface";
global.__objectNames[19] = "oRailLeft";
global.__objectNames[20] = "oLing";
global.__objectNames[21] = "objMoon";
global.__objectNames[22] = "oRailMoverV";
global.__objectNames[23] = "oDoor";
global.__objectNames[24] = "oLight";
global.__objectNames[25] = "oParEntity";
global.__objectNames[26] = "oParBarrage";
global.__objectNames[27] = "object45";
global.__objectNames[28] = "oParPlayer";
global.__objectNames[29] = "oParLife";
global.__objectNames[30] = "oParCrate";
global.__objectNames[31] = "oParCBox";
global.__objectNames[32] = "oParEnemy";
global.__objectNames[33] = "oParNPC";
global.__objectNames[34] = "oParRail";
global.__objectNames[35] = "oParDecorate";
global.__objectNames[36] = "oParSolid";
global.__objectNames[37] = "oParJumpThru";
global.__objectNames[38] = "oGBAShader";
global.__objectNames[39] = "oCamera";
global.__objectNames[40] = "oCoin";
global.__objectNames[41] = "oCratePoof";
global.__objectNames[42] = "oParticle";
global.__objectNames[43] = "oPause";
global.__objectNames[44] = "oMeun";
global.__objectNames[45] = "oGameSystemNo";
global.__objectNames[46] = "oDialogueBox";
global.__objectNames[47] = "oVK";
global.__objectNames[48] = "oFT";
global.__objectNames[49] = "oTaPuLo";
global.__objectNames[50] = "oERun";
global.__objectNames[51] = "oBoos";
global.__objectNames[52] = "oEFT";
global.__objectNames[53] = "oGameSystem";
global.__objectNames[54] = "oIdle";
global.__objectNames[55] = "oEAtkBull";
global.__objectNames[56] = "oFxDust";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for