///scr_file_load();
level_data_count = 0;

// Destroy the objects
instance_destroy(obj_asset_ground);
instance_destroy(obj_asset_enemy);
instance_destroy(obj_asset_life);
instance_destroy(obj_asset_goal);
instance_destroy(obj_asset_lava);
instance_destroy(obj_asset_spike);
instance_destroy(obj_asset_tree);
instance_destroy(obj_asset_rock);
instance_destroy(obj_asset_flip);

// Does the file exist
if (!file_exists(level_data_file)) {
    exit;
}

ini_open(level_data_file);
    // Load the level info
    _object_data_count = ini_read_string("conf", "obj_cnt", 0); // Object count
    _version = ini_read_real("conf", "version", 0); // File version
    view_speed = ini_read_real("conf", "view", 1); // View follow player
    level_music = ini_read_real("conf", "music", 0); // Level music
    time = ini_read_real("conf", "time", 100); // Level timer
    if (room == rm_play) {
        show_debug_message("SOUND ID " + string(obj_play.level_music) + " (" + sound_get_name(obj_play.level_music) + ") has been loaded from the save file");
    } else {
        show_debug_message("SOUND ID " + string(obj_editor.level_music) + " (" + sound_get_name(obj_editor.level_music) + ") has been loaded from the save file");
    }
    obj_audio.audio_music_to_play = level_music;
    
    // Version check
    if (_version != FILEVERSION) {
        file_copy(level_data_file, string_replace(level_data_file, ".ini", "-old-") + string(_version) + ".ini");
        file_delete(level_data_file);
        room_goto(room);
    }
    
    // Load the objects
    scr_file_load_object(obj_asset_ground);
    scr_file_load_object(obj_asset_enemy);
    scr_file_load_object(obj_asset_life);
    scr_file_load_object(obj_asset_goal);
    scr_file_load_object(obj_asset_lava);
    scr_file_load_object(obj_asset_spike);
    scr_file_load_object(obj_asset_tree);
    scr_file_load_object(obj_asset_rock);
    scr_file_load_object(obj_asset_flip);
    
ini_close();
