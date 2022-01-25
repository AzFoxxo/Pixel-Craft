///scr_editor_mode_update();

// Move the editor view
scr_editor_movement();

// Place and change the objects
scr_editor_place_object();

if (input_key_jump()) {
    scr_demo_level();
}
