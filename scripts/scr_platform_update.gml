///scr_platform_update();

// Handle movement
repeat(spd) {

   // Move right
   if (input_key_right()) {
      if ! (place_meeting(x + 1, y, obj_asset_ground)) {
         sprite_index = spr_player_right;
         if (obj_play.view_speed == 0) {
            view_xview[0]++;
            background_x += 0.5;
         }
         x++;
      }
   }
   
   // Move left
   if (input_key_left()) {
      if ! (place_meeting(x - 1, y, obj_asset_ground)) {
         sprite_index = spr_player_left;
         if (obj_play.view_speed == 0) {
            view_xview[0]--;
            background_x -= 0.5;
         }
         x--;
      }
   }
}
// Handle safe placement
if (gravity_is_down) {
    if (place_meeting(x, y + 1, obj_asset_ground)) {
       safe_x = x;
       safe_y = y;
    }
} else {
    if (place_meeting(x, y - 1, obj_asset_ground)) {
       safe_x = x;
       safe_y = y;
    }
}

// Handle gravity
repeat (gravity_strength) {
    if (gravity_state) {
        if (gravity_is_down) {
            if (!place_meeting(x, y + 1, obj_asset_ground)) {
                y++;
            }
        } else {
            if (!place_meeting(x, y - 1, obj_asset_ground)) {
                y--;
            }
        }
    }
}

// Handle jumping
repeat (jump_speed) {
    if (gravity_is_down) {
        if (input_key_jump() && !place_free(x, y + 1)) {
           gravity_state = false;
           vspeed = -jump_speed;
           jump_amount = 1;
           sprite_index = spr_player_jump;
        }
        if (jump_height == jump_amount) {
             gravity_state = true;
             vspeed = 0;
        }
        else {
             jump_amount++;
        }
        if place_meeting(x, y, obj_asset_ground) {
           y += jump_speed;
        }
    } else {
        if (input_key_jump() && !place_free(x, y - 1)) {
           gravity_state = false;
           vspeed = jump_speed;
           jump_amount = 1;
           sprite_index = spr_player_jump;
        }
        if (jump_height == jump_amount) {
             gravity_state = true;
             vspeed = 0;
        }
        else {
             jump_amount++;
        }
        if place_meeting(x, y, obj_asset_ground) {
           y -= jump_speed;
        }
    }
}

// Handle death
if (y > room_height || (y < 0 && !gravity_is_down) || x < view_xview[0] + 32) {
    // reset the x and y to the lasst known safe position
    x = safe_x;
    y = safe_y;
    
    // Reset the view to the player
    view_xview[0] = (x - view_wview / 2);
    
    // Decresse the life
    life--;
}

// Animation
if (xprevious == x && yprevious == y) {
    image_speed = 0;
} else {
    image_speed = 0.1;
}
