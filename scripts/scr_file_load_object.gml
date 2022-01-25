///scr_file_save_object(object);
_file_object = argument0;

repeat (_object_data_count) {
  
    _x = ini_read_real("o", "x" + string(level_data_count), 32);
    _y = ini_read_real("o", "y" + string(level_data_count), 32);
    _object = asset_get_index(ini_read_string("o", "n" + string(level_data_count), 0));
    
    if (_object == _file_object) {
        instance_create(_x, _y, _file_object);
    }
    
    level_data_count++;

}

level_data_count = 0;
