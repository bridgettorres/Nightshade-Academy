
if (!instance_exists(obj_textbox) && keyboard_check_pressed(vk_enter)) {
	with (instance_create_depth(0,0,-9999, obj_textbox)){
		scr_text("BEEP BEEEP BEEP BEEEP");
		scr_text("...");
		scr_text("BEEP BEEEP BEEP BEEEP");
		scr_text("...");
		scr_text("BEEP BEEEP BEEP BEEEP");
		scr_text("Fine I'll wake up, but let me turn off the alarm first!");
	}
}