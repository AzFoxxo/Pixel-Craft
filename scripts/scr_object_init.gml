///scr_object_init();
/***************************************************
  This code is run for all objects in the editor.
 ***************************************************/

// If not in editor mode exit the script
if (is_play_mode()) {
    exit;
}

// Snap to grid
x = (x div 32) * 32;
y = (y div 32) * 32;


// Destroy the object if touching another object
// Delete
if (place_meeting(x, y, obj_delete)) {
    instance_destroy();
}
// Ground
if (place_meeting(x, y, obj_asset_ground)) {
    instance_destroy();
}
// Life
if (place_meeting(x, y, obj_asset_life)) {
    instance_destroy();
}
// Lava
if (place_meeting(x, y, obj_asset_lava)) {
    instance_destroy();
}
// Goal
if (place_meeting(x, y, obj_asset_goal)) {
    instance_destroy();
}
// Spike
if (place_meeting(x, y, obj_asset_spike)) {
    instance_destroy();
}
// Enemy
if (place_meeting(x, y, obj_asset_enemy)) {
    instance_destroy();
}
// Rock
if (place_meeting(x, y, obj_asset_rock)) {
    instance_destroy();
}
// Tree
if (place_meeting(x, y, obj_asset_tree)) {
    instance_destroy();
}
// Tree
if (place_meeting(x, y, obj_asset_flip)) {
    instance_destroy();
}
