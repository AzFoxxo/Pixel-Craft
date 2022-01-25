///scr_play_mode_init();

// Prevent Crashing
view_speed = 0;
level_music = 0;


// Init and load the level geometry
scr_file_init();
scr_file_load();

// Time
time_start = time;

// Views
if (view_speed == 0) {
    view_object[0] = obj_player;
}
