///scr_editor_controls();

// Save and play the level
if (keyboard_check_pressed(vk_escape)) {
    scr_file_save();
    room_goto(rm_play);
}

// Save the level
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("S"))) {
    scr_file_save();
}

// Load the level
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("L"))) {
    scr_file_load();
}
