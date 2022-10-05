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

return keyboard_check(global.K_ADVANCE);

#define input_key_left
///input_key_left();

return keyboard_check(global.K_LEFT);

#define input_key_right
///input_key_right();

return keyboard_check(global.K_RIGHT);

#define input_key_down
///input_key_down();

return keyboard_check(global.K_DOWN);

#define input_key_up
///input_key_up();

return keyboard_check(global.K_UP);

#define input_key_any
///input_key_any();

return keyboard_check(global.K_ANY);

#define input_key_jump
///input_key_any();

return keyboard_check_pressed(global.K_JUMP);

#define input_click
///input_click();

return mouse_check_button(global.C_CLICK);

#define input_click_long
///input_click_long();

return mouse_check_button_pressed(global.C_CLICK);