/// @description array_explode(string, delim)
/// @function array_explode
/// @param string
/// @param  delim
//returns an array of conditions
var a, c = "";
a="";
for (var i = 1; i <= string_length(argument0); ++i) {
    if (string_char_at(argument0, i) == argument1 || i == string_length(argument0)) {
        if (i == string_length(argument0))
            c += string_char_at(argument0, i);
        a[array_length_1d(a)] = c;
        c = "";
    } else {
        c += string_char_at(argument0, i);
    }
}

return a;


