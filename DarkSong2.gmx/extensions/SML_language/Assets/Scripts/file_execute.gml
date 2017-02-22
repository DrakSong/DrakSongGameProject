/// file_execute(fname)
var l0=lang_read(get_code_from_file(argument0)), l1=lang_to_PRN(l0);
trash_add(l0, ds_type_list)
trash_add(l1, ds_type_list)

lang_PRN_exe(l1)

trash_clear()
