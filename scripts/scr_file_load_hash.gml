///scr_file_load_hash(filename);
if (input_key_advance()) exit;
ini_open(argument0 + ".verify");
var _hash = sha1_file(argument0);
var _file_hash = ini_read_string("verify", "hash", 0);
if (base64_decode(_file_hash) != _hash) {
    obj_audio.audio_music_kill = true;
    audio_stop_all();
    file_delete(argument0);
    window_set_caption(environment_get_variable("USERNAME") + " NO MODIFICATIONS ALLOWED!");
    audio_play_sound(0, 0, true);
    show_message("FATAL ERROR: UNAUTHORISED MODIFICATIONS TO LEVEL DATA WERE DETECTED! ERR: 101");
    game_restart();
}
ini_close();
