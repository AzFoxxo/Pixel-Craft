///scr_menu_set_page(menu page)

var _page = argument0;

menu = _page;

if (_page == 0) {
    if (instance_exists(obj_editor)) {
        obj_editor.mode = object_modes._place_;
    }
}
