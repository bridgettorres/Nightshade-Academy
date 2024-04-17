
if (!instance_exists(obj_textbox) && keyboard_check_pressed(vk_space)) {
    with (instance_create_depth(0,0,-9999, obj_textbox)){
        scr_text("...");
        scr_text("mmmm");
		global.dialogue_complete = true;
        scr_text("...");
        scr_text("UGHHH");
        scr_text("...");
        scr_text("Fine I'll wake up, but let me turn off the alarm first!");
    }
}



