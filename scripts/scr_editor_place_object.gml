///scr_editor_place_object();

// Place object
if (input_click() && mode == object_modes._place_) {
  instance_create(mouse_x, mouse_y, object);
}
