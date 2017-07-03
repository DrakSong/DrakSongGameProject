/// @description  Perform all the logic for the SFX Mixer Window
//STEP //////////////////////////////////////////////////////////////////////////////////////////
if keyboard_check_pressed(ord("M")) {debug = !debug; update = true;}

if (debug)
    {
    // MOUSE
    mouseX = device_mouse_x_to_gui(0)
    mouseY = device_mouse_y_to_gui(0)
     
    if saveHover || openHover {update = true;}
    saveHover = false;
    openHover = false;
    
// TITLE BAR ////////////////////////////////////////////////////////////////////////
if ((mouseY > yy && mouseY < yy+HEIGHT) && (mouseX > xx && mouseX < xx+WIDTH))
    {
    if mouseY < yy+16
        {
        //SAVE
        if mouseX > xx+WIDTH-16
            {
            saveHover = true;
            if mouse_check_button_pressed(mb_left) 
                {
                var fileOpen = get_open_filename("INI File|*.ini","");
                
                    if fileOpen != ""
                    {
                        ini_open(fileOpen);
                        for(i=0;i<sfxCount;i++)
                            {sfxVol[i]= ini_read_real("SFX",sfxIndex[i],.3);}
                        ini_close();                        
                        display = "File Opened.";
                    }
                }
            update = true;
            }
        // HOVER -----------------------------------------------------------
        else if mouseX > xx+WIDTH-32
            {
            openHover = true;
            if mouse_check_button_pressed(mb_left) 
                {
                var fileSave = get_save_filename("INI File|*.ini","");  
                              
                    if fileSave != ""
                    {
                        ini_open(fileSave);
                        for(i=0;i<sfxCount;i++)
                            {ini_write_real("SFX",sfxIndex[i],sfxVol[i]);}
                        ini_close();                        
                        display = "File Saved.";
                    }
                
                }
            update = true;
            }
        // BAR - DRAGGING -----------------------------------------------------------
        else
            {
            if mouse_check_button_pressed(mb_left) 
                {dragIX = xx-mouseX; dragIY = yy-mouseY; dragging = true;}
            }
        }
// SOUND EDITING ////////////////////////////////////////////////////////////////////////
    else if (!dragging)
        {       
        if mouse_check_button_pressed(mb_left)
            { 
            // SHIFT SELECT -----------------------------------------------------------
            if keyboard_check(vk_shift)
                {
                if selectCount
                    {
                    var initS = select[selectCount-1];
                    var destS = clamp(floor((-16+(mouseY-yy)+(scrollY*16))/16),0,sfxCount);
                    var dist = destS-initS;
                    var ii = 0;
                    
                    repeat(abs(dist))
                        {
                        ii += sign(dist);
                        select[selectCount] = initS + ii;
                        selectCount++;
                        }
                    }
                }         
            // CONTROL SELECT -----------------------------------------------------------
            else if keyboard_check(vk_control)
                {
                select[selectCount] = clamp(floor((-16+(mouseY-yy)+(scrollY*16))/16),0,sfxCount);
                selectCount++;
                }
            else
                {
                if mouseX < xx+146
                    {
                    for(i=0;i<selectCount;i++) {select[i] = -1;}
                    selectCount = 0;
                    select[selectCount] = clamp(floor((-16+(mouseY-yy)+(scrollY*16))/16),0,sfxCount);
                    selectCount++;
                    }
                }
            }
        if mouse_check_button(mb_left)
            {
            if (mouseX > xx+146) && (mouseX < xx+WIDTH)
                {
                ssV = round( ( (mouseX-xx-148) /140)*20) /20;
                for(i=0;i<selectCount;i++)
                    {
                    sfxVol[select[i]] = clamp(ssV,0,1);
                    }
               
                update = true;
                }
            }            
        if mouse_check_button_released(mb_left)
            {                
            for(i=0;i<selectCount;i++)
                {
                if select[i] >= 0 && audio_exists(select[i])
                    {
                    audio_sound_gain(select[i],sfxVol[select[i]],0);
                    if soundCurrent {audio_stop_sound(soundCurrent);}
                    soundCurrent = audio_play_sound(select[i],10,0);
                    ini_open("sfx.ini");
                        ini_write_real("SFX",sfxIndex[select[i]],sfxVol[select[i]]);
                    ini_close(); 
                    }
                }
            // Alarm to stop long sounds
            alarm[0] = 120;
            update = true;
            }            
        }
        
    // SCROLLING -----------------------------------------------------------
    if mouse_wheel_up()     {scrollY = max(scrollY-3,0); update = true;}
    if mouse_wheel_down()   {scrollY = min(scrollY+3,sfxCount-(HEIGHT/16)+1); update = true;}
    }
    
// DRAGGING /////////////////////////////////////////////////////////////////////
    if dragging 
        {
        xx = dragIX+mouseX; yy = dragIY+mouseY;
        if !mouse_check_button(mb_left) 
            {
            //xx = clamp(xx,0,__view_get( e__VW.WPort, 0 )-WIDTH);
            //yy = clamp(yy,0,__view_get( e__VW.HPort, 0 )-HEIGHT);
            dragging = false;
            }
        }
        
// SURFACE /////////////////////////////////////////////////////////////////////
    if update
        {
        if !surface_exists(surfSFX) {surfSFX = surface_create(WIDTH+1,HEIGHT+1);}
        else
            {
            surface_set_target(surfSFX);
                draw_clear_alpha(BLACK,1); // ! BLACK
                // DRAW
                draw_set_color(PINK); //!\\ PINK
                draw_rectangle(0,0,WIDTH,HEIGHT,1);
                draw_rectangle(0,0,WIDTH,15,0);
                // BUTTONS
                draw_set_color(c_white);
                draw_sprite(sSFXButtons,0+saveHover,WIDTH-16,0);
                draw_sprite(sSFXButtons,2+openHover,WIDTH-32,0);
                draw_set_font(fontSFX);
                //draw_text(32,4,select);               
                draw_set_halign(fa_right);
                draw_set_valign(fa_center);
                var scrollYMax = min(sfxCount,scrollY+floor(HEIGHT/16));
                // SFX LIST
                for(i=scrollY;i<scrollYMax;i++)
                    {
                    draw_set_color(c_gray);
                    for(t=0;t<selectCount;t++)
                        {
                        if select[t] = i {draw_set_color(c_white); break;}
                        }
                    // Volume Slider
                    for(s=0;s<=20;s++)
                        {
                        var vX = 146+(s*7);
                        var vY = 21+(i-scrollY)*16; //var vA = sfxVol[i]*20 > s;                        
                        
                        if s = 0        {draw_sprite(sSFXSlider,2+(sfxVol[i]*20>s),vX,vY);}
                        else if s < 20  {draw_sprite(sSFXSlider,4+(sfxVol[i]*20>=s),vX,vY);}
                        else            {draw_sprite(sSFXSlider,6+(sfxVol[i]*20=s),vX,vY);}
                        }
                    // Volume Handle
                    var vX = 146+(sfxVol[i]*140);
                    var vY = 21+(i-scrollY)*16;
                    draw_sprite(sSFXSlider,i=select,vX,vY);
                    
                    // Text                    
                    draw_text(142,vY+3,string_hash_to_newline(sfxIndex[i]));
                    draw_text(WIDTH-4,vY+4,string_hash_to_newline(sfxVol[i]));                    
                    }
                draw_set_halign(fa_left);
                draw_set_valign(fa_top);
                draw_set_color(c_white);
                update = false;
            surface_reset_target();
            }
        }
    }

