if (!instance_exists(obj_textbox)){
	room_goto_next();
	audio_stop_sound(snd_background);
	audio_play_sound(snd_badending, 1, true);
}
