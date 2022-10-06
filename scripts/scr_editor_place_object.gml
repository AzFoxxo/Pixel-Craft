///scr_editor_place_object();

// Place object
if (input_click() && mode == object_modes._place_) {
    instance_create_safety_number_checked(mouse_x, mouse_y, object);
}

// Grid object
// TODO: Fix glitches
else if (mode == object_modes._grid_) {
    if (!instance_exists(obj_edit_grid_selection)) {
        // Create the object when long clicked
        if (input_click_long())
            instance_create((mouse_x div CELLSIZE) * CELLSIZE, (mouse_y div CELLSIZE) * CELLSIZE, obj_edit_grid_selection);
    } else {
        // Calculate scale
        var _diff_x = (obj_edit_grid_selection.x - (mouse_x div CELLSIZE) * CELLSIZE) / CELLSIZE * -1;
        var _diff_y = (obj_edit_grid_selection.y - (mouse_y div CELLSIZE) * CELLSIZE) / CELLSIZE * -1;
        
        // Temp fix - disable minus values
        if (_diff_x < 0) _diff_x = 0;
        if (_diff_y < 0) _diff_y = 0;
        
        // Fix underflow when positive
        if (_diff_x > 0) _diff_x++;
        if (_diff_y > 0) _diff_y++;
        
        // Prevent selection when of size 1 on either x or y, being zero
        if (_diff_x == 0) _diff_x = 1;
        if (_diff_y == 0) _diff_y = 1;
        
        // If negative on X or Y axis
        var _neg_x; if (obj_edit_grid_selection.image_xscale > 0) _neg_x = 1; else _neg_x = -1;
        var _neg_y; if (obj_edit_grid_selection.image_yscale > 0) _neg_y = 1; else _neg_y = -1;
        
        // Set scale
        obj_edit_grid_selection.image_xscale = _diff_x;
        obj_edit_grid_selection.image_yscale = _diff_y;
        
        
        // If long clicked, create objects in place
        if (input_click_long()) {
            // Loop through and create them
            for (var i = 0; i != obj_edit_grid_selection.image_xscale; i += _neg_x) {
                for (var j = 0; j != obj_edit_grid_selection.image_yscale; j += _neg_y) {
                    var _x = obj_edit_grid_selection.x + (i * 32);
                    var _y = obj_edit_grid_selection.y + (j * 32);
                    show_debug_message(object_get_name(object) + ": " + string(_x) + ", " + string(_y));
                    instance_create_safety_number_checked(_x, _y, object);
                }
            }
            // Destroy the edit grid selection
            instance_destroy(obj_edit_grid_selection);
        }
    }
}
