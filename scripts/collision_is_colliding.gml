///collision_is_colliding(coll:x, coll:y, coll:width, coll:height, x, y);
return false;
var coll_x = argument0;
var coll_y = argument1;

var coll_width = argument2;
var coll_height = argument3;

var obj_x = argument4;
var obj_y = argument5;

if (point_in_rectangle(obj_x, obj_y, coll_x, coll_y, coll_x + coll_width, coll_y + coll_height)) {
    return true;
} else {
    return false;
}

// Return false
return false;
