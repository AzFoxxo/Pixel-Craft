///scr_menu_set_option()

var _option = argument0;

switch (_option)
{
    case "level_options":
        scr_menu_set_page(2);
    break;
    
    case "menu_back":
        scr_menu_set_page(1);
    break;
    
    case "quit":
        with (obj_editor) {
            scr_file_save();
            scr_menu_set_room(rm_title);
        }
    break;
    
    case "play":
        with (obj_editor) {
            scr_file_save();
            scr_menu_set_room(rm_play);
        }
    break;
    
    case "music":
        with (obj_editor) {
            //obj_audio.audio_music_to_play
            //obj_editor.level_editor
            if (sound_exists(obj_editor.level_music+1)) {
                obj_editor.level_music++;
                obj_audio.audio_music_to_play = obj_editor.level_music;
            } else {
                obj_editor.level_music = 0;
                obj_audio.audio_music_to_play = obj_editor.level_music;
            }
        }
    break;
    
    case "view":
        with (obj_editor) {
            if (view_speed == 0) {
                view_speed = 1;
            } else if (view_speed == 1) {
                view_speed = 2;
            } else {
                view_speed = 0;
            }
        }
    break;
    
    case "time_up":
        obj_editor.time += 10;
        obj_editor.time = clamp(obj_editor.time, 10, 500);
    break;
    
    case "time_down":
        obj_editor.time -= 10;
        obj_editor.time = clamp(obj_editor.time, 10, 500);
    break;
    
    default: scr_menu_set_page(0);
}
 
