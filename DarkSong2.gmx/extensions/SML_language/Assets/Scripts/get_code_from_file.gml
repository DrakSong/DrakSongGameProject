/// get_code_from_file(fname)

var str='', file=file_text_open_read(argument0)

while !file_text_eof(file)
{
    str+=file_text_read_string(file)+' '
    file_text_readln(file)
}

file_text_close(file)

return str;
