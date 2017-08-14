/// @description ds_get_s(structure,accessstring)
/// @function ds_get_s
/// @param structure
/// @param accessstring
/*
    Get an embedded value
    Access String format: (accessor)(number/string)[,number] (more, seperated by a space)

*/
var s = argument[1], l = string_length(s), c, i, lookingfor = 0,//lookingfor {0: accessor, 1: number}
    last_acc = "", last_num, num_start = ord("0"), num_end = ord("9"),
    ccode, perform = false, ind, _ds = argument[0], set = 0; 
    
last_num[0] = "";
last_num[1] = "";
if (is_undefined(_ds)) return _ds;

for (i = 1; i <= l; ++i) {
    if (is_undefined(_ds))
        break;

    c = string_char_at(s, i);
    
    if (lookingfor == 0) {//accessor
        if (c == "|" || c == "?" || c == "#" || c == "@") {
            last_acc = c;
            lookingfor = 1;
        }
        continue;
    } else { //number
        ccode = ord(c);
        
        if (last_acc == "?") {
            if (c == " ") {
                perform = true;
            } else {
                last_num[set] += c;
            }
        } else {
            if (ccode >= num_start && ccode <= num_end) {
                last_num[set] += c;
            } else if (c == ",") {
                ++set;
            } else if (c == " ") {
                continue;
            } else { //end of numbers
                --i;
                perform = true;
            }
        }
    }
    
    if (perform || i == l) {
        perform = false;
        ind = real(last_num[0]);
        set = 0;
        lookingfor = 0;
        
        switch (last_acc) {
            case "|":
                _ds = _ds[| ind];
            break;
            case "?":
                _ds = _ds[? last_num[0]];
            break;
            case "#":
                _ds = _ds[# ind, real(last_num[1])];
            break;
            case "@":
                _ds = _ds[@ ind];
            break;
        }
        
        
        last_num[0] = "";
        last_num[1] = "";
    }

}

return _ds;

