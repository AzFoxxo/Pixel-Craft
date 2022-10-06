#define lsf_initialisation
///lsf_initialisation(width, height);

var _level_width = argument0;
var _level_height = argument1;

lsf_data = ds_grid_create(_level_width, _level_height);
ds_grid_set_region(lsf_data, 0, 0, _level_width, _level_height, -404);

#define lsf_modify_cell
///lsf_modify_cell(x, y, value [-404 to unset else object id]);

var _x = argument0 div CELLSIZE;
var _y = argument1 div CELLSIZE;
var _value = argument2;

// Set the grid value
ds_grid_set(lsf_data, _x, _y, _value);

#define lsf_destroy
///lsf_destroy();

ds_grid_destroy(lsf_data);
