///scr_file_save_object(object);
_file_object = argument0;

with (_file_object) {
    
    ini_write_real("o", "x" + string(obj_editor.level_data_count), x);
    ini_write_real("o", "y" + string(obj_editor.level_data_count), y);
    ini_write_string("o", "n" + string(obj_editor.level_data_count), object_get_name(obj_editor._file_object));
    obj_editor.level_data_count++;
}
