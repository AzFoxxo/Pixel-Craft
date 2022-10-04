///scr_editor_movement();

// Movement

editor_view_speed = 8;

if (input_key_right()) {
   view_xview[0] += editor_view_speed * delta_diff_calc();
}
if (input_key_left()) {
   view_xview[0] -= editor_view_speed * delta_diff_calc();
}

// Clamp view
view_xview[0] = clamp(view_xview[0], view_wview[0] * -10, view_wview[0] * 10);
