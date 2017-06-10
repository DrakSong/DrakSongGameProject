//load_all();


ini_open("Game.ini");

//          Settings            //
global.screenSize = ini_read_real("Settings", "screensize", 100);
global.shakeScreen = ini_read_real("Settings","shakescreen", true);
global.fogEffect   = ini_read_real("Settings", "fogeffect",  true);
global.fontNum     = ini_read_real("Settings", "fontnum",     true);

//          Sounds             //
global.masterVolume = ini_read_real("Sounds", "mastervolume", 100);
global.musicVolume = ini_read_real("Sounds","musicvolume", 100)
global.effectsVolume = ini_read_real("Sounds", "effectsvolume", 100)


//          Controls            //
global.Up       = ini_read_real("Controls", "Up", vk_up);
global.Down     = ini_read_real("Controls", "Down", vk_down);
global.Left     = ini_read_real("Controls", "Left", vk_left);
global.Right    = ini_read_real("Controls", "Right", vk_right);

global.Attack = ini_read_real("controls", "Attack", ord("A"));
global.Stop = ini_read_real("controls", "Stop", ord("S"))
global.Defend = ini_read_real("controls", "Defend", ord("D"))

/*
global.Key1 = ini_read_real("controls", "Key1", ord('Q'))
global.Key2 = ini_read_real("controls", "Key2", ord('W') )
global.Key3 = ini_read_real("controls", "Key3", ord('E'))
global.Key4 = ini_read_real("controls", "Key4", ord('1'))
global.Key5 = ini_read_real("controls", "Key5", ord('2') )
global.Key6 = ini_read_real("controls", "Key6", ord('3'))

global.Spell1 = ini_read_real("controls", "Spell1", ord('F'))
global.Spell2 = ini_read_real("controls", "Spell2", ord('R'))
global.Stats = ini_read_real("controls", "Stats", vk_tab)
global.CameraToggle = ini_read_real("controls", "CameraToggle", ord('Z'))
global.Pause = ini_read_real("controls", "Pause", vk_escape)
global.HotKey = ini_read_real("controls", "HotKey", vk_shift)

*/


ini_close();


