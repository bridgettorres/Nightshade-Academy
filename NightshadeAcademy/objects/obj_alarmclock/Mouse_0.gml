if (!instance_exists(obj_textbox)){
	room_goto_next();
	audio_stop_sound(snd_alarmclock);
	audio_play_sound(snd_background, 1, true);
}

