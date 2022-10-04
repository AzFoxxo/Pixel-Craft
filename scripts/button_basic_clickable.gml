///button_basic_clickable(x, y, width, height, outline colour, background colour, text colour, text [or sprite id], execute script, single argument, text scale);

/***************************************************
  Draws a basic button which is clickable, calls a script with one argument
  Repo: https://github.com/AzFoxxo/Useful-Scripts
 ***************************************************/

// Variables
var btn_x = argument0; // Button X
var btn_y = argument1; // Button Y

var btn_width = argument2; // Button Width
var btn_height = argument3; // Button Height

var btn_col_bg = argument4; // Background colour
var btn_col_ol = argument5; // Border colour

var btn_text_col = argument6; // Text colour
var btn_text_str = argument7; // Text to display (if sprite id, draws a sprite instead)

var btn_on_click_input_scr = argument8; // Script to execute
var btn_on_click_input_args = argument9; // Script single argument

var btn_scl = argument10; // Text scale

var btn_x_far = btn_x + btn_width; // Button far X
var btn_y_far = btn_y + btn_height; // Button far Y


// If hovered over, set background colour to yellow
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), btn_x, btn_y, (btn_x + btn_width), (btn_y + btn_height)))
    btn_col_bg = c_yellow;

// Draw the background
draw_rectangle_colour(btn_x, btn_y, btn_x_far, btn_y_far, btn_col_bg, btn_col_bg, btn_col_bg, btn_col_bg, false);

// Draw the border
draw_rectangle_colour(btn_x, btn_y, btn_x_far, btn_y_far, btn_col_ol, btn_col_ol, btn_col_ol, btn_col_ol, true);

// Set text colour and alignment
draw_set_colour(btn_text_col);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// If text, draw the text, else draw the sprite
if (is_string(btn_text_str))
    draw_text_transformed(btn_x + (btn_width / 2), btn_y + (btn_height / 2), "" + string(btn_text_str), btn_scl, btn_scl ,0);
else
    draw_sprite(btn_text_str, btn_text_col, btn_x, btn_y);

// Reset the text alignment to top left
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// If the button is pressed, execute the script with one argument
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), btn_x, btn_y, (btn_x + btn_width), (btn_y + btn_height)) && input_click_long())
    script_execute(btn_on_click_input_scr, btn_on_click_input_args);

