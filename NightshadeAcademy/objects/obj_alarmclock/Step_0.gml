if (!visible && global.dialogue_complete) {
	visible = true;
	audio_play_sound(snd_alarmclock, 1, true);
}