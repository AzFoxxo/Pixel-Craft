///scr_editor_movement();

// Movement
repeat (4) {
    if (input_key_right()) {
       view_xview[0]++;
    }
    if (input_key_left()) {
       view_xview[0]--;
    }

}

// Clamp view
view_xview[0] = clamp(view_xview[0], view_wview[0] * -10, view_wview[0] * 10);
