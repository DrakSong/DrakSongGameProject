// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // oBlockglobal.__objectDepths[1] = 0; // oSlopeglobal.__objectDepths[2] = 6; // oJumpThruglobal.__objectDepths[3] = 1; // oPushBlockglobal.__objectDepths[4] = 0; // oRailMoverHglobal.__objectDepths[5] = 0; // oSwitchMoverHglobal.__objectDepths[6] = 0; // oBounceMoverglobal.__objectDepths[7] = 0; // oSwitchMoverVglobal.__objectDepths[8] = 1; // oPathMoverglobal.__objectDepths[9] = 2; // oRailglobal.__objectDepths[10] = 2; // oRail2global.__objectDepths[11] = 0; // oCircleMoverglobal.__objectDepths[12] = 2; // oRailTopglobal.__objectDepths[13] = 2; // oRailBottomglobal.__objectDepths[14] = 2; // oRailRightglobal.__objectDepths[15] = 0; // object60global.__objectDepths[16] = 0; // oNPCSaveglobal.__objectDepths[17] = 0; // oNPCglobal.__objectDepths[18] = -1600; // oLightSurfaceglobal.__objectDepths[19] = 2; // oRailLeftglobal.__objectDepths[20] = 0; // oLingglobal.__objectDepths[21] = 1316134911; // objMoonglobal.__objectDepths[22] = 0; // oRailMoverVglobal.__objectDepths[23] = 0; // oDoorglobal.__objectDepths[24] = -1600; // oLightglobal.__objectDepths[25] = 0; // oParEntityglobal.__objectDepths[26] = 0; // oParPlayerBarrageglobal.__objectDepths[27] = 0; // object45global.__objectDepths[28] = 0; // oParPlayerglobal.__objectDepths[29] = 0; // oParLifeglobal.__objectDepths[30] = 0; // oParCrateglobal.__objectDepths[31] = -1215752191; // oParCBoxglobal.__objectDepths[32] = 0; // oParEnemyglobal.__objectDepths[33] = 0; // oParNPCglobal.__objectDepths[34] = 0; // oParRailglobal.__objectDepths[35] = 0; // oParDecorateglobal.__objectDepths[36] = 0; // oParSolidglobal.__objectDepths[37] = 0; // oParJumpThruglobal.__objectDepths[38] = -10; // oGBAShaderglobal.__objectDepths[39] = 0; // oCameraglobal.__objectDepths[40] = 1; // oCoinglobal.__objectDepths[41] = 1; // oCratePoofglobal.__objectDepths[42] = -10; // oParticleglobal.__objectDepths[43] = 0; // oPauseglobal.__objectDepths[44] = 0; // oMeunglobal.__objectDepths[45] = -99999999; // oGameSystemNoglobal.__objectDepths[46] = 0; // oDialogueBoxglobal.__objectDepths[47] = -9999999; // oVKglobal.__objectDepths[48] = 0; // oFTglobal.__objectDepths[49] = 0; // oTaPuLoglobal.__objectDepths[50] = -1; // oERunglobal.__objectDepths[51] = -1; // oBoosglobal.__objectDepths[52] = 0; // oEFTglobal.__objectDepths[53] = -99999999; // oGameSystemglobal.__objectDepths[54] = -1; // oIdleglobal.__objectDepths[55] = -1; // oEAtkBullglobal.__objectDepths[56] = -1; // oFxDust

global.__objectNames[0] = "oBlock";global.__objectNames[1] = "oSlope";global.__objectNames[2] = "oJumpThru";global.__objectNames[3] = "oPushBlock";global.__objectNames[4] = "oRailMoverH";global.__objectNames[5] = "oSwitchMoverH";global.__objectNames[6] = "oBounceMover";global.__objectNames[7] = "oSwitchMoverV";global.__objectNames[8] = "oPathMover";global.__objectNames[9] = "oRail";global.__objectNames[10] = "oRail2";global.__objectNames[11] = "oCircleMover";global.__objectNames[12] = "oRailTop";global.__objectNames[13] = "oRailBottom";global.__objectNames[14] = "oRailRight";global.__objectNames[15] = "object60";global.__objectNames[16] = "oNPCSave";global.__objectNames[17] = "oNPC";global.__objectNames[18] = "oLightSurface";global.__objectNames[19] = "oRailLeft";global.__objectNames[20] = "oLing";global.__objectNames[21] = "objMoon";global.__objectNames[22] = "oRailMoverV";global.__objectNames[23] = "oDoor";global.__objectNames[24] = "oLight";global.__objectNames[25] = "oParEntity";global.__objectNames[26] = "oParPlayerBarrage";global.__objectNames[27] = "object45";global.__objectNames[28] = "oParPlayer";global.__objectNames[29] = "oParLife";global.__objectNames[30] = "oParCrate";global.__objectNames[31] = "oParCBox";global.__objectNames[32] = "oParEnemy";global.__objectNames[33] = "oParNPC";global.__objectNames[34] = "oParRail";global.__objectNames[35] = "oParDecorate";global.__objectNames[36] = "oParSolid";global.__objectNames[37] = "oParJumpThru";global.__objectNames[38] = "oGBAShader";global.__objectNames[39] = "oCamera";global.__objectNames[40] = "oCoin";global.__objectNames[41] = "oCratePoof";global.__objectNames[42] = "oParticle";global.__objectNames[43] = "oPause";global.__objectNames[44] = "oMeun";global.__objectNames[45] = "oGameSystemNo";global.__objectNames[46] = "oDialogueBox";global.__objectNames[47] = "oVK";global.__objectNames[48] = "oFT";global.__objectNames[49] = "oTaPuLo";global.__objectNames[50] = "oERun";global.__objectNames[51] = "oBoos";global.__objectNames[52] = "oEFT";global.__objectNames[53] = "oGameSystem";global.__objectNames[54] = "oIdle";global.__objectNames[55] = "oEAtkBull";global.__objectNames[56] = "oFxDust";global.__objectDepths[57] = 0; // oGameglobal.__objectDepths[58] = 0; // oFgGrass1global.__objectDepths[59] = -1; // oParGrassglobal.__objectDepths[60] = 0; // oFgGrass2global.__objectDepths[61] = 0; // oFgGrassFire1global.__objectDepths[62] = 0; // oFgGrassFire2global.__objectDepths[63] = 0; // oVineSpawnerglobal.__objectDepths[64] = 0; // oLanternSpawnerglobal.__objectDepths[65] = 0; // oRopeSegmentglobal.__objectDepths[66] = 0; // oBulletglobal.__objectDepths[67] = -2; // oSmallExplosionglobal.__objectDepths[68] = -3; // oBigExplosionglobal.__objectDepths[69] = -1; // oFxFlameglobal.__objectDepths[70] = 0; // oCrawlerglobal.__objectNames[57] = "oGame";global.__objectNames[58] = "oFgGrass1";global.__objectNames[59] = "oParGrass";global.__objectNames[60] = "oFgGrass2";global.__objectNames[61] = "oFgGrassFire1";global.__objectNames[62] = "oFgGrassFire2";global.__objectNames[63] = "oVineSpawner";global.__objectNames[64] = "oLanternSpawner";global.__objectNames[65] = "oRopeSegment";global.__objectNames[66] = "oBullet";global.__objectNames[67] = "oSmallExplosion";global.__objectNames[68] = "oBigExplosion";global.__objectNames[69] = "oFxFlame";global.__objectNames[70] = "oCrawler";global.__objectDepths[15] = 1; // oPlayerglobal.__objectNames[15] = "oPlayer";

global.__objectDepths[2] = -10000000; // oCursor
global.__objectDepths[3] = 0; // oParController
global.__objectDepths[4] = 0; // oParButton
global.__objectDepths[5] = 0; // oButtonSelect
global.__objectDepths[6] = 0; // oButton_Scale
global.__objectDepths[7] = 0; // oSettings
global.__objectDepths[8] = 0; // oControls
global.__objectDepths[9] = 0; // oSounds
global.__objectDepths[10] = 0; // oQuit
global.__objectDepths[11] = -99; // oSettings_Controller
global.__objectDepths[12] = 0; // oBack
global.__objectDepths[13] = 0; // oScreenScale
global.__objectDepths[14] = 0; // oFogEffect
global.__objectDepths[15] = -99; // oPauseMenu
global.__objectDepths[16] = 0; // oInitialize
global.__objectDepths[17] = 0; // oGame
global.__objectDepths[18] = 0; // oFont
global.__objectDepths[19] = 0; // oMasterVolume
global.__objectDepths[20] = 0; // oEffectsVolume
global.__objectDepths[21] = 0; // oMusicVolume
global.__objectDepths[22] = 0; // oMusicTrack
global.__objectDepths[23] = -99; // oControls_Controller
global.__objectDepths[24] = -99; // oSounds_Controller
global.__objectDepths[25] = -101; // oControls_SetKey
global.__objectDepths[26] = 0; // oShakeScreen
global.__objectDepths[27] = 0; // oResume
global.__objectDepths[28] = 0; // oControls_Key


global.__objectNames[2] = "oCursor";
global.__objectNames[3] = "oParController";
global.__objectNames[4] = "oParButton";
global.__objectNames[5] = "oButtonSelect";
global.__objectNames[6] = "oButton_Scale";
global.__objectNames[7] = "oSettings";
global.__objectNames[8] = "oControls";
global.__objectNames[9] = "oSounds";
global.__objectNames[10] = "oQuit";
global.__objectNames[11] = "oSettings_Controller";
global.__objectNames[12] = "oBack";
global.__objectNames[13] = "oScreenScale";
global.__objectNames[14] = "oFogEffect";
global.__objectNames[15] = "oPauseMenu";
global.__objectNames[16] = "oInitialize";
global.__objectNames[17] = "oGame";
global.__objectNames[18] = "oFont";
global.__objectNames[19] = "oMasterVolume";
global.__objectNames[20] = "oEffectsVolume";
global.__objectNames[21] = "oMusicVolume";
global.__objectNames[22] = "oMusicTrack";
global.__objectNames[23] = "oControls_Controller";
global.__objectNames[24] = "oSounds_Controller";
global.__objectNames[25] = "oControls_SetKey";
global.__objectNames[26] = "oShakeScreen";
global.__objectNames[27] = "oResume";
global.__objectNames[28] = "oControls_Key";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for