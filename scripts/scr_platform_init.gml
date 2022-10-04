///scr_platform_init();

// View xview
view_xview[0] = (x - view_wview / 2);

// Platform
safe_x = xstart;
safe_y = ystart;
spd = 4;
gravity_state = true;
gravity_strength = 4;
gravity_is_down = true;
jump_height = 100;
jump_amount = 1;
jump_speed = 6;

// Life variables
life = 5;
life_max = life;
life_cool_down = 60;
hit = false;

// Image speed
image_speed = 0.1;
