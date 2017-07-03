

GameGuiSetSize(1)
if (debug)
    {
    if (surface_exists(surfSFX)) {draw_surface(surfSFX,xx,yy);}
    draw_text(5,5,string_hash_to_newline("SFX EDITOR DEBUG IS ON"));
    //draw_text(5,15,string_hash_to_newline(string(__view_get( e__VW.WPort, 0 ))+" "+string(__view_get( e__VW.HPort, 0 ))+ " / "+string(xx+WIDTH)+" "+string(yy+HEIGHT)));
    }

