/// @description save_all();
/// @function save_all


ini_open("Game.ini");

///     Settings        //
ini_write_real("Settings", "screenscale", global.screenSize);
ini_write_real("Settings", "shakescreen", global.shakeScreen);
ini_write_real("Settings", "fogeffect", global.fogEffect);
ini_write_real("Settings", "fontnum",   global.fontNum);



//ini_write_real("Settings", "lighteffect", global.lightEffect);
//ini_write_real("Settings", "bloodeffect", global.bloodEffect);

//      Sounds          //
ini_write_real("Sounds", "mastervolume", global.masterVolume);
ini_write_real("Sounds", "musicvolume", global.musicVolume);
ini_write_real("Sounds", "effectsvolume", global.effectsVolume);


//      Controls        //
ini_write_real("Controls", "Up" , global.Up);
ini_write_real("Controls", "Down", global.Down);
ini_write_real("Controls", "Left", global.Left);
ini_write_real("Controls", "Right", global.Right);

ini_write_real("Controls", "Jump" , global.Jump);
ini_write_real("Controls", "Action 1", global.Action1);
ini_write_real("Controls", "Action 2", global.Action2);

/*
ini_write_real("controls", "Key1", global.Key1);
ini_write_real("controls", "Key2", global.Key2);
ini_write_real("controls", "Key3", global.Key3);
ini_write_real("controls", "Key4", global.Key4);
ini_write_real("controls", "Key5", global.Key5);
ini_write_real("controls", "Key6", global.Key6);


ini_write_real("controls", "Spell1", global.Spell1);
ini_write_real("controls", "Spell2", global.Spell2);
ini_write_real("controls", "Stats", global.Stats);
ini_write_real("controls", "CameraToggle", global.CameraToggle);
ini_write_real("controls", "Pause", global.Pause);
ini_write_real("controls", "HotKey", global.HotKey);

*/



ini_close();

