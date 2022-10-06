///scr_editor_mode_init();

// Modes
enum object_modes {
    _place_,
    _erase_,
    _empty_,
    _grid_
}

// Variables
object = obj_asset_ground;
mode = object_modes._place_;

// View variables
view_speed = 0;
level_music = snd_stage_1;

// Time variables
time = 500;

// Randomise
randomize();

// Init and load the level geometry
scr_file_init();
scr_file_load();

// Quick fix for enemy not showing origin in correct place
sprite_set_offset(spr_enemy, 0, 0);

// Initialise lsf
//lsf_initialisation(10, 10);
