/// @description array_explode_escape(string, delim, escape)
/// @function array_explode_escape
/// @param string
/// @param  delim
/// @param  escape
//returns an array of conditions
var a, c = "", escape=argument2, delim = argument1, s = argument0,
    is_escape = false, curChar, l = string_length(s);
a="";
for (var i = 1; i <= l; ++i) {
    curChar = string_char_at(s, i) ;
    
    //check if start of escape
    if (c == "" && curChar == escape) {
        is_escape = true;
    }
    else if (curChar == delim || i == l
        || (is_escape && curChar == escape 
            && (
                    (i <= l - 1 &&  string_char_at(s, i + 1) == delim) 
                    ||
                    (i == l)
                            
               )
            )
        )
    {
        if (!is_escape && i == l)
            c += curChar;
        a[array_length_1d(a)] = c;
        c = "";
        is_escape = false;
        if (i <= l - 1 &&  string_char_at(s, i + 1) == delim)
            ++i; 
    } else {
        c += curChar;
    }
}

return a;


