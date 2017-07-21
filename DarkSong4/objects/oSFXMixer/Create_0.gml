debug       = false;

PINK        = make_color_rgb(255,49,105);
BLACK       = make_color_rgb(17,19,25);

scrollY     = 0;
sound       = 0;
sfxCount    = 0;

select[0]   = 0;
selectCount = 0;

mouseX      = 0;
mouseY      = 0;
saveHover   = 0;
openHover   = 0;

xx          = 128;
yy          = 128;

ssV         = 0;
soundCurrent= 0;

WIDTH       = 320;
HEIGHT      = 308;

surfSFX     = 0;
surfSFX     = surface_create(WIDTH+1,HEIGHT+1);
update      = true;

// drag
dragIX      = 0;
dragIY      = 0;
dragging    = false;

//OPEN AND COLLECT SFX DATA
ini_open("sfx.ini");
    for (i=0;i<100;i++) // < APPROXIMATELY THE NUMBER OF SOUNDS IN YOUR GAME
        {
        if audio_get_name(i) != "<undefined>"
            {
            var c       = sfxCount; sfxCount++;
            sfxIndex[c] = audio_get_name(i);
            sfxVol[c]   = ini_read_real("SFX",sfxIndex[c],.3);
            audio_sound_gain(c,sfxVol[c],0);
            }
        }
ini_close();


//APPLY GAIN
// This is just a general script which is already performed in the previous step.
// Create your own setup to specify things like custom audio groups.
    //for (i=0;i<sfxCount;i++)    {audio_sound_gain(i,sfxVol[i],0);}


