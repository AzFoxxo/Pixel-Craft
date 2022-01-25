///scr_menu_set_object_mode(objecr mode)

var _mode = argument0;

if (obj_editor.mode == object_modes._erase_) {
    obj_editor.mode = object_modes._place_;
} else {
    obj_editor.mode = object_modes._erase_;
}
