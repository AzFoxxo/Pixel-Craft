///scr_menu_set_room(room)

var _room = argument0;

obj_room_fade.fade_complete = false;
obj_room_fade.fade_percent = 100;
obj_room_fade.fade_in = true;

room_goto(_room);
