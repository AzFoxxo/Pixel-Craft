///scr_ai_update();
if (is_play_mode()) {
   // Move in direction
    if place_free(x+dir,y) {
       if (!place_free(x + dir, y + 1)) {
          x += dir;
       }
    }
    
    // Anti Gravity glitch fix and direction stuck fix
    if (x == xprevious) {
       dir = -dir;
    }
    
    // Flip direction
    if (place_meeting(x + 1, y, obj_asset_enemy)) {
        dir = -1;
    } else  if (place_meeting(x - 1, y, obj_asset_enemy)) {
        dir = 1;
    }
    
    // Gravity
    if place_free(x,y+1) {
        y++;
    }
    
    // Killed
    if place_meeting(x,y,obj_asset_enemy) {
       x = 10000;
       y = 10000;
    }
    if (xprevious > x) image_xscale = -1;
    else image_xscale = 1;
}
