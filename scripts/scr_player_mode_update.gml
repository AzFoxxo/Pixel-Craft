///scr_player_mode_update();

// Decrease remaining time
time -= (1 / room_speed);

// Is time up
if (time <= 0) {
    room_goto_previous();
}

// Auto scrolling
view_xview[0] += view_speed;
