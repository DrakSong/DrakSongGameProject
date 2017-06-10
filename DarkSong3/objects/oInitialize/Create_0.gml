/// @description  Set Fonts

global.Font = font_add_sprite(sFont, ord(" "), 0, 1);
global.Font2 = font_add_sprite(sFont2, ord(" "),0 , 1);

global.fontNum = 0;
global.fonts[0] = global.Font;
global.fonts[1] = global.Font2;
global.fonts[2] = pxfont;



/// Set Game Variables

global.sound1  = snd_button;
global.sound2  = snd_button2;
global.kKey    = vk_enter;



////  Game Settings  //////
global.screenScale          = 1;
global.shakeScreen          = true;
global.fogEffect            = true;
global.gameGUI              = true;
global.textScale            = 1;
global.fontNum              = 0;


////  Sounds  ///////
global.masterVolume         = 100;
global.musicVolume          = 100;
global.effectsVolume        = 100;
global.musicTrack           = 0;



////  Controls  /////

global.Up           = vk_up;
global.Down         = vk_down;
global.Left         = vk_left;
global.Right        = vk_right;
global.Jump         = ord("Z");
global.Action1      = ord("X");
global.Action2      = ord("C");


global.Key1         = ord("Q");
global.Key2         = ord("W");
global.Key3         = ord("E");
global.Key4         = ord("1");
global.Key5         = ord("2");
global.Key6         = ord("3");

global.Escape       = vk_escape;
global.Tab          = vk_tab;


load_all();
set_all();




/// Go to next room
/// Now that you're done Initializing global variables
/// Its time to move to the MainMenu of your game!

room_goto(room_next(pre));
// or room_goto(rmTest);


