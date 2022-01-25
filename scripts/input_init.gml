#define input_init
//input_init();
global.K_ANY = vk_anykey;
global.K_ADVANCE = vk_enter;
global.K_JUMP = vk_space;
global.K_LEFT = ord("A");
global.K_RIGHT = ord("D");
global.K_DOWN = ord("S");
global.K_UP = ord("W");
global.C_CLICK = mb_left;

#define input_key_advance
///input_key_advance();

if (keyboard_check(global.K_ADVANCE)) {
    return true;
} else {
    return false;
}

#define input_key_left
///input_key_left();

if (keyboard_check(global.K_LEFT)) {
    return true;
} else {
    return false;
}

#define input_key_right
///input_key_right();

if (keyboard_check(global.K_RIGHT)) {
    return true;
} else {
    return false;
}

#define input_key_down
///input_key_down();

if (keyboard_check(global.K_DOWN)) {
    return true;
} else {
    return false;
}

#define input_key_up
///input_key_up();

if (keyboard_check(global.K_UP)) {
    return true;
} else {
    return false;
}

#define input_key_any
///input_key_any();

if (keyboard_check(global.K_ANY)) {
    return true;
} else {
    return false;
}

#define input_key_jump
///input_key_any();

if (keyboard_check_pressed(global.K_JUMP)) {
    return true;
} else {
    return false;
}

#define input_click
///input_click();

if (mouse_check_button(global.C_CLICK)) {
    return true;
} else {
    return false;
}

#define input_click_long
///input_click_long();

if (mouse_check_button_pressed(global.C_CLICK)) {
    return true;
} else {
    return false;
}