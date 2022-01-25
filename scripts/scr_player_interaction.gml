///scr_play_mode();

// Clamp life
life = clamp(life, -1, life_max);

// Take a life away from the player for touching an enemy or a spike
if (place_meeting(x, y, obj_asset_enemy) || place_meeting(x, y, obj_asset_spike)) {
   if (life_cool_down <= 0) {
      life--;
      hit = true;
      life_cool_down = irandom_range(90,60);
   }
}

// Gravity flip
if (place_meeting(x, y, obj_asset_flip)) {
    gravity_is_down = !gravity_is_down;
    image_yscale *= -1;
}

// Kill the player for touching lava
if (place_meeting(x, y, obj_asset_lava)) {
   life = -1;
}

// Level completed
if (place_meeting(x,y,obj_asset_goal)) {
   room_goto(rm_editor);
}
 
// Game Over
if (life < 0) {
    obj_room_fade.fade_complete = false;
    obj_room_fade.fade_in = false;
    x = xprevious;
    y = yprevious;
    //room_goto(rm_editor);
}

// Life cool down time
life_cool_down--;

// Flash after being hit
if (hit) {
   if (life_cool_down >= 0) {
      image_alpha = random_range(0.25, 0.75);
   }
   else {
      hit = false;
      image_alpha = 1;
   }
}
