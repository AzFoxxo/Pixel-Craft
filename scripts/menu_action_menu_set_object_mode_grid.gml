///menu_action_menu_set_object_mode_grid(object mode)

var _mode = argument0;

if (instance_exists(obj_edit_grid_selection))
    instance_destroy(obj_edit_grid_selection);

if (obj_editor.mode == object_modes._grid_)
    obj_editor.mode = object_modes._place_;
else
    obj_editor.mode = object_modes._grid_;
