///scr_tile_ground();

// Top row
if (!place_meeting(x,y - 1,obj_asset_ground)) {
   if (!place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 0;
   } else if (place_meeting(x + 1,y,obj_asset_ground) && place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 1;
   } else {
        image_index = 2;
   }
}

// Middle row
else if (place_meeting(x,y - 1,obj_asset_ground) && place_meeting(x,y + 1,obj_asset_ground)) {
   if (!place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 3;
   } else if (place_meeting(x + 1,y,obj_asset_ground) && place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 4;
   } else {
        image_index = 5;
   }
}

// Buttom row
else {
   if (!place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 6;
   } else if (place_meeting(x + 1,y,obj_asset_ground) && place_meeting(x - 1,y,obj_asset_ground)) {
      image_index = 7;
   } else {
        image_index = 8;
   }
}
