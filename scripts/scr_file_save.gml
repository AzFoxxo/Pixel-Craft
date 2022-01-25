///scr_file_save();

// Delete the old file
if (file_exists(level_data_file)) {
    file_delete(level_data_file);
}

level_data_count = 0;
ini_open(level_data_file);    
    // Save the objects
    scr_file_save_object(obj_asset_ground);
    scr_file_save_object(obj_asset_enemy);
    scr_file_save_object(obj_asset_life);
    scr_file_save_object(obj_asset_goal);
    scr_file_save_object(obj_asset_lava);
    scr_file_save_object(obj_asset_spike);
    scr_file_save_object(obj_asset_tree);
    scr_file_save_object(obj_asset_rock);
    scr_file_save_object(obj_asset_flip);
    
    // Save the level info
    ini_write_string("conf", "obj_cnt", level_data_count); // Object count
    ini_write_real("conf", "version", FILEVERSION); // File version
    ini_write_real("conf", "view", obj_editor.view_speed); // View speed
    ini_write_real("conf", "music", obj_editor.level_music); // Music track
    ini_write_real("conf", "time", obj_editor.time); // Level timer
    show_debug_message("SOUND ID " + string(obj_editor.level_music) + " (" + sound_get_name(obj_editor.level_music) + ") has been written to the save file");
ini_close();
